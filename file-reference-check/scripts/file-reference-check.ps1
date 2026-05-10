<#
File Reference Information

Human URL:
https://github.com/agentforgeframework-cpu/-agentforge-tools/blob/main/file-reference-check/scripts/file-reference-check.ps1

Raw URL:
https://raw.githubusercontent.com/agentforgeframework-cpu/-agentforge-tools/refs/heads/main/file-reference-check/scripts/file-reference-check.ps1

Git Domain:
github.com/agentforgeframework-cpu/-agentforge-tools

Why this is included:
This file includes standardized reference information for portability, traceability, survivability, and AI accessibility. The Human URL supports human review in GitHub. The Raw URL supports direct retrieval by AI systems, scripts, and loaders. The Git Domain identifies the authoritative repository source even if the file is copied, zipped, downloaded, or moved.
#>

param(
    [ValidateSet('scan','update-and-zip')]
    [string]$Mode = 'scan',
    [string]$RepoPath = '.',
    [string]$OutputDir,
    [switch]$GeneratePatch,
    [string[]]$SupportedExtensions = @('.md','.txt','.yaml','.yml','.sas','.ps1','.py','.js','.css','.html','.xml','.json'),
    [string[]]$ExcludedDirectoryNames = @('.git','node_modules','.venv','venv','dist','build','vendor','outputs','__pycache__'),
    [string[]]$ExcludedExtensions = @('.csv','.dat','.zip','.7z','.gz','.tar','.png','.jpg','.jpeg','.gif','.webp','.pdf','.docx','.xlsx','.pptx','.exe','.dll')
)

$ErrorActionPreference = 'Stop'

function Write-Info([string]$Message) { Write-Host "[file-reference-check] $Message" }
function Write-Warn([string]$Message) { Write-Host "[file-reference-check WARNING] $Message" -ForegroundColor Yellow }

function Resolve-FullPath([string]$PathValue) {
    return (Resolve-Path -LiteralPath $PathValue).Path
}

function Invoke-GitText([string[]]$Arguments, [string]$WorkingDirectory) {
    Push-Location $WorkingDirectory
    try {
        $result = & git @Arguments 2>$null
        if ($LASTEXITCODE -ne 0) { return $null }
        return ($result | Out-String).Trim()
    }
    finally { Pop-Location }
}

function Get-RepositoryContext([string]$RepoRoot) {
    $gitFound = [bool](Get-Command git -ErrorAction SilentlyContinue)
    $remote = $null
    $branch = $null
    $top = $RepoRoot

    if ($gitFound) {
        $topDetected = Invoke-GitText @('rev-parse','--show-toplevel') $RepoRoot
        if ($topDetected) { $top = $topDetected }
        $remote = Invoke-GitText @('remote','get-url','origin') $top
        $branch = Invoke-GitText @('branch','--show-current') $top
    }

    if (-not $branch) { $branch = 'main' }

    $owner = $null
    $repo = $null
    $platform = 'Unknown'

    if ($remote -and $remote -match 'github\.com[:/](?<owner>[^/]+)/(?<repo>[^/]+?)(\.git)?$') {
        $platform = 'GitHub'
        $owner = $Matches.owner
        $repo = $Matches.repo -replace '\.git$',''
    }

    $gitDomain = $null
    $humanBase = $null
    $rawBase = $null

    if ($platform -eq 'GitHub' -and $owner -and $repo) {
        $gitDomain = "github.com/$owner/$repo"
        $humanBase = "https://github.com/$owner/$repo/blob/$branch"
        $rawBase = "https://raw.githubusercontent.com/$owner/$repo/refs/heads/$branch"
    }

    [pscustomobject]@{
        Platform = $platform
        Owner = $owner
        Repository = $repo
        Branch = $branch
        LocalRoot = $top
        Remote = $remote
        GitDomain = $gitDomain
        HumanBaseUrl = $humanBase
        RawBaseUrl = $rawBase
        GitFound = $gitFound
    }
}

function Get-RelativeGitPath([string]$RepoRoot, [string]$FileFullName) {
    $repoRootResolved = (Resolve-Path $RepoRoot).Path.TrimEnd('\')
    $fileResolved = (Resolve-Path $FileFullName).Path

    if ($fileResolved.StartsWith($repoRootResolved)) {
        return ($fileResolved.Substring($repoRootResolved.Length).TrimStart('\') -replace '\\','/')
    }

    return ($FileFullName -replace '\\','/')
}

function Test-ExcludedPath([string]$FileFullName, [string]$RepoRoot, [string[]]$ExcludedDirectoryNames) {
    $repoRootResolved = (Resolve-Path $RepoRoot).Path.TrimEnd('\')
    $fileResolved = (Resolve-Path $FileFullName).Path
    $relative = $fileResolved.Substring($repoRootResolved.Length).TrimStart('\')
    $relative = $relative -replace '\\','/'
    $parts = $relative -split '[\\/]'
    foreach ($part in $parts) {
        if ($ExcludedDirectoryNames -contains $part) { return $true }
    }
    return $false
}

function Get-ExpectedPlainBlock([string]$HumanUrl, [string]$RawUrl, [string]$GitDomain) {
@"
File Reference Information

Human URL:
$HumanUrl

Raw URL:
$RawUrl

Git Domain:
$GitDomain

Why this is included:
This file includes standardized reference information for portability, traceability, survivability, and AI accessibility. The Human URL supports human review in GitHub. The Raw URL supports direct retrieval by AI systems, scripts, and loaders. The Git Domain identifies the authoritative repository source even if the file is copied, zipped, downloaded, or moved.
"@.Trim()
}

function Get-ExpectedBlockText([string]$Extension, [string]$HumanUrl, [string]$RawUrl, [string]$GitDomain) {
    $plain = Get-ExpectedPlainBlock $HumanUrl $RawUrl $GitDomain
    switch ($Extension.ToLowerInvariant()) {
        '.md' { return "# $plain`n`n---`n" }
        '.txt' { return "$plain`n`n---`n" }
        '.sas' { return "/*`n$plain`n*/`n`n" }
        '.html' { return "<!--`n$plain`n-->`n`n" }
        '.xml' { return "<!--`n$plain`n-->`n`n" }
        '.ps1' { return "<#`n$plain`n#>`n`n" }
        '.py' { return (($plain -split "`n" | ForEach-Object { "# $_" }) -join "`n") + "`n`n" }
        '.js' { return "/*`n$plain`n*/`n`n" }
        '.css' { return "/*`n$plain`n*/`n`n" }
        '.yaml' { return (($plain -split "`n" | ForEach-Object { "# $_" }) -join "`n") + "`n`n" }
        '.yml' { return (($plain -split "`n" | ForEach-Object { "# $_" }) -join "`n") + "`n`n" }
        default { return $null }
    }
}

function Test-FileReference($File, $Context, [string]$RepoRoot) {
    $ext = $File.Extension.ToLowerInvariant()
    $relative = Get-RelativeGitPath $RepoRoot $File.FullName
    $humanUrl = "$($Context.HumanBaseUrl)/$relative"
    $rawUrl = "$($Context.RawBaseUrl)/$relative"
    $gitDomain = $Context.GitDomain
    $content = Get-Content -LiteralPath $File.FullName -Raw -ErrorAction SilentlyContinue
    if ($null -eq $content) { $content = '' }

    $hasBlock = $content -match 'File Reference Information'
    $hasHuman = $humanUrl -and ($content -match [regex]::Escape($humanUrl))
    $hasRaw = $rawUrl -and ($content -match [regex]::Escape($rawUrl))
    $hasGitDomain = $gitDomain -and ($content -match [regex]::Escape($gitDomain))
    $hasWhy = $content -match 'Why this is included'

    $status = 'PASS'
    $notes = New-Object System.Collections.Generic.List[string]

    if (-not $hasBlock) {
        $status = 'MISSING'
        $notes.Add('No File Reference Information block found.')
    } else {
        if (-not $hasHuman) { $notes.Add('Human URL missing or mismatched.') }
        if (-not $hasRaw) { $notes.Add('Raw URL missing or mismatched.') }
        if (-not $hasGitDomain) { $notes.Add('Git Domain missing or mismatched.') }
        if (-not $hasWhy) { $notes.Add('Explanation missing.') }
        if ($notes.Count -gt 0) { $status = 'INCOMPLETE_OR_MISMATCH' }
    }

    if ($ext -eq '.json' -and $status -eq 'MISSING') {
        $notes.Add('JSON scanned but not auto-patched because standard JSON does not support comments.')
    }

    [pscustomobject]@{
        Status = $status
        File = $relative
        Extension = $ext
        Notes = ($notes -join ' ')
        ExpectedHumanUrl = $humanUrl
        ExpectedRawUrl = $rawUrl
        ExpectedGitDomain = $gitDomain
        Patchable = ($status -eq 'MISSING' -and $ext -ne '.json' -and $null -ne (Get-ExpectedBlockText $ext $humanUrl $rawUrl $gitDomain))
    }
}

function Write-MarkdownReport($Findings, $Skipped, $Context, [string]$ReportPath) {
    $total = @($Findings).Count
    $pass = @($Findings | Where-Object Status -eq 'PASS').Count
    $missing = @($Findings | Where-Object Status -eq 'MISSING').Count
    $bad = @($Findings | Where-Object Status -eq 'INCOMPLETE_OR_MISMATCH').Count
    $patchable = @($Findings | Where-Object Patchable -eq $true).Count
    $skippedCount = 0
    if ($null -ne $Skipped) {
       $skippedCount = $Skipped.Count
    }
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add('# file-reference-check Report')
    $lines.Add('')
    $lines.Add("Generated: $(Get-Date -Format s)")
    $lines.Add('')
    $lines.Add('## Repository Context')
    $lines.Add('')
    $lines.Add("- Platform: $($Context.Platform)")
    $lines.Add("- Repository: $($Context.GitDomain)")
    $lines.Add("- Branch: $($Context.Branch)")
    $lines.Add("- Local root: $($Context.LocalRoot)")
    $lines.Add("- Remote: $($Context.Remote)")
    $lines.Add('')
    $lines.Add('## Summary')
    $lines.Add('')
    $lines.Add("- Files scanned: $total")
    $lines.Add("- Passed: $pass")
    $lines.Add("- Missing: $missing")
    $lines.Add("- Incomplete or mismatched: $bad")
    $lines.Add("- Patchable missing blocks: $patchable")
    $skippedCount = 0
    if ($null -ne $Skipped) {
        $skippedCount = $Skipped.Count
    }
    $lines.Add("- Skipped files: $skippedCount")
    $lines.Add('')
    $lines.Add('## Findings')
    $lines.Add('')
    $lines.Add('| Status | File | Notes |')
    $lines.Add('|---|---|---|')
    foreach ($f in ($Findings | Sort-Object Status, File)) {
        $status = [string]$f.Status
        $fileText = ([string]$f.File) -replace '\|','/'
        $notes = ([string]$f.Notes) -replace '\|','/'
        $lines.Add("| $status | ``$fileText`` | $notes |")
    }
    $lines.Add('')
    $lines.Add('## Human-in-Command Note')
    $lines.Add('')
    $lines.Add('This report is advisory. The tool does not enforce, commit, push, or modify GitHub. The human reviews and decides what to apply.')
    $lines.Add('')
    $lines.Add('---')
    Set-Content -LiteralPath $ReportPath -Value ($lines -join "`n") -Encoding UTF8
}

function Write-PatchScript($Findings, [string]$RepoRoot, [string]$PatchPath) {
    $patchables = @($Findings | Where-Object Patchable -eq $true)
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add('# Generated by file-reference-check v0.1')
    $lines.Add('# Review before running. This patches files in place in the local working copy only.')
    $lines.Add('$ErrorActionPreference = ''Stop''')
    $lines.Add('$RepoRoot = ''' + ($RepoRoot -replace '''','''''') + '''')
    $lines.Add('')
    $lines.Add('function Add-BlockToFile($RelativePath, $Block) {')
    $lines.Add('    $file = Join-Path $RepoRoot $RelativePath')
    $lines.Add('    $content = Get-Content -LiteralPath $file -Raw')
    $lines.Add('    if ($content -notmatch ''File Reference Information'') {')
    $lines.Add('        Set-Content -LiteralPath $file -Value ($Block + "`n" + $content) -Encoding UTF8')
    $lines.Add('        Write-Host "Patched: $RelativePath"')
    $lines.Add('    } else { Write-Host "Skipped existing block: $RelativePath" }')
    $lines.Add('}')
    $lines.Add('')

    foreach ($f in $patchables) {
        $block = Get-ExpectedBlockText $f.Extension $f.ExpectedHumanUrl $f.ExpectedRawUrl $f.ExpectedGitDomain
        if (-not $block) { continue }
        $relOs = ($f.File -replace '/', [System.IO.Path]::DirectorySeparatorChar)
        $lines.Add('# Patch: ' + $f.File)
        $lines.Add('$block = @''')
        $lines.Add($block.TrimEnd())
        $lines.Add('''@')
        $lines.Add('Add-BlockToFile ''' + ($relOs -replace '''','''''') + ''' $block')
        $lines.Add('')
    }

    if ($patchables.Count -eq 0) {
        $lines.Add('Write-Host "No patchable missing File Reference Information blocks were found."')
    } else {
        $lines.Add('Write-Host "Patch complete. Review changes with: git diff"')
    }

    Set-Content -LiteralPath $PatchPath -Value ($lines -join "`n") -Encoding UTF8
}

function Invoke-UpdateAndZip([string]$RepoRoot, [string]$OutputDir) {
    if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
        throw 'Git was not found. Cannot run update-and-zip mode.'
    }

    $status = & git -C $RepoRoot status --porcelain
    if ($status) {
        Write-Warn 'Working tree is not clean. Stopping before git pull to protect local changes.'
        Write-Host $status
        return
    }

    Write-Info 'Working tree clean. Running git pull.'
    & git -C $RepoRoot pull
    if ($LASTEXITCODE -ne 0) { throw 'git pull failed.' }

    New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null
    $zipPath = Join-Path $OutputDir 'repo-snapshot.zip'
    if (Test-Path $zipPath) { Remove-Item $zipPath -Force }

    $tempRoot = Join-Path $env:TEMP ('file-reference-check-' + [guid]::NewGuid().ToString())
    New-Item -ItemType Directory -Force -Path $tempRoot | Out-Null
    $copyRoot = Join-Path $tempRoot (Split-Path $RepoRoot -Leaf)
    New-Item -ItemType Directory -Force -Path $copyRoot | Out-Null

    $exclude = @('.git','node_modules','.venv','venv','dist','build','vendor','__pycache__')
    Get-ChildItem -LiteralPath $RepoRoot -Force | Where-Object { $exclude -notcontains $_.Name } | ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination $copyRoot -Recurse -Force
    }

    Compress-Archive -Path (Join-Path $copyRoot '*') -DestinationPath $zipPath -Force
    Remove-Item -LiteralPath $tempRoot -Recurse -Force

    $logPath = Join-Path $OutputDir 'update-and-zip-log.md'
    Set-Content -LiteralPath $logPath -Encoding UTF8 -Value @"
# update-and-zip log

Generated: $(Get-Date -Format s)

Repository: $RepoRoot

Result: git pull completed and ZIP snapshot created.

ZIP: $zipPath
"@
    Write-Info "ZIP created: $zipPath"
}

$repoRoot = Resolve-FullPath $RepoPath
if (-not $OutputDir) { $OutputDir = Join-Path $repoRoot 'file-reference-check\outputs' }
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

if ($Mode -eq 'update-and-zip') {
    Invoke-UpdateAndZip $repoRoot $OutputDir
    return
}

$context = Get-RepositoryContext $repoRoot
Write-Info 'Repository context detected:'
Write-Host "  Platform: $($context.Platform)"
Write-Host "  Repository: $($context.GitDomain)"
Write-Host "  Branch: $($context.Branch)"
Write-Host "  Local root: $($context.LocalRoot)"
Write-Host "  Remote: $($context.Remote)"

if ($context.Platform -ne 'GitHub') { Write-Warn 'v0.1 expects a GitHub repository. Results may be incomplete.' }

$allFiles = Get-ChildItem -LiteralPath $repoRoot -Recurse -File -Force
$skipped = New-Object System.Collections.Generic.List[object]
$candidates = New-Object System.Collections.Generic.List[object]

foreach ($file in $allFiles) {
    if (Test-ExcludedPath $file.FullName $repoRoot $ExcludedDirectoryNames) {
        $skipped.Add([pscustomobject]@{ File = (Get-RelativeGitPath $repoRoot $file.FullName); Reason = 'Excluded directory' })
        continue
    }
    $ext = $file.Extension.ToLowerInvariant()
    if ($ExcludedExtensions -contains $ext) {
        $skipped.Add([pscustomobject]@{ File = (Get-RelativeGitPath $repoRoot $file.FullName); Reason = 'Excluded extension' })
        continue
    }
    if ($SupportedExtensions -contains $ext) { $candidates.Add($file) }
    else { $skipped.Add([pscustomobject]@{ File = (Get-RelativeGitPath $repoRoot $file.FullName); Reason = 'Unsupported extension' }) }
}

$findings = foreach ($file in $candidates) { Test-FileReference $file $context $repoRoot }
$reportPath = Join-Path $OutputDir 'file-reference-report.md'
$jsonPath = Join-Path $OutputDir 'file-reference-report.json'
$patchPath = Join-Path $OutputDir 'generated-apply-file-reference-fixes.ps1'

Write-MarkdownReport $findings $skipped $context $reportPath
@{ generated = (Get-Date -Format s); context = $context; findings = $findings; skipped = $skipped } | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $jsonPath -Encoding UTF8

if ($GeneratePatch) {
    Write-PatchScript $findings $repoRoot $patchPath
    Write-Info "Patch script written: $patchPath"
}

Write-Info "Markdown report written: $reportPath"
Write-Info "JSON report written: $jsonPath"
Write-Info 'Done.'
