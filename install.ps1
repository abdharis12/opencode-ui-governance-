$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$OpenCodeRoot = Join-Path $HOME ".config\opencode"

$SourceSkills = Join-Path $RepoRoot "skills"
$SourceAgents = Join-Path $RepoRoot "agents"

$SourceUiGovernance = Join-Path $SourceSkills "ui-governance"
$SourceFrontendDesign = Join-Path $SourceSkills "frontend-design"
$SourceUiAuditor = Join-Path $SourceAgents "ui-auditor.md"

$TargetSkills = Join-Path $OpenCodeRoot "skills"
$TargetAgents = Join-Path $OpenCodeRoot "agents"

$TargetUiGovernance = Join-Path $TargetSkills "ui-governance"
$TargetFrontendDesign = Join-Path $TargetSkills "frontend-design"
$TargetUiAuditor = Join-Path $TargetAgents "ui-auditor.md"

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host " OpenCode UI Governance Installer" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Repository:"
Write-Host "  $RepoRoot"
Write-Host ""

Write-Host "OpenCode global directory:"
Write-Host "  $OpenCodeRoot"
Write-Host ""

# ------------------------------------------------------------
# Validate source files
# ------------------------------------------------------------

$RequiredPaths = @(
    $SourceUiGovernance,
    $SourceFrontendDesign,
    $SourceUiAuditor
)

foreach ($Path in $RequiredPaths) {
    if (-not (Test-Path $Path)) {
        throw "Required source not found: $Path"
    }
}

$FrontendLicense = Join-Path $SourceFrontendDesign "LICENSE.txt"

if (-not (Test-Path $FrontendLicense)) {
    Write-Warning "frontend-design LICENSE.txt was not found."
    Write-Warning "Make sure the license file required by the upstream skill is present."
}

# ------------------------------------------------------------
# Create target directories
# ------------------------------------------------------------

New-Item -ItemType Directory -Path $TargetSkills -Force | Out-Null
New-Item -ItemType Directory -Path $TargetAgents -Force | Out-Null

# ------------------------------------------------------------
# Helper function
# ------------------------------------------------------------

function Install-Directory {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Source,

        [Parameter(Mandatory = $true)]
        [string]$Destination,

        [Parameter(Mandatory = $true)]
        [string]$Name
    )

    Write-Host "Installing $Name..." -ForegroundColor Yellow

    if (Test-Path $Destination) {
        Write-Host "  Existing installation detected." -ForegroundColor DarkYellow
        Write-Host "  Replacing with repository version." -ForegroundColor DarkYellow

        Remove-Item -Path $Destination -Recurse -Force
    }

    Copy-Item `
        -Path $Source `
        -Destination $Destination `
        -Recurse `
        -Force

    Write-Host "  Installed successfully." -ForegroundColor Green
}

function Install-File {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Source,

        [Parameter(Mandatory = $true)]
        [string]$Destination,

        [Parameter(Mandatory = $true)]
        [string]$Name
    )

    Write-Host "Installing $Name..." -ForegroundColor Yellow

    if (Test-Path $Destination) {
        Write-Host "  Existing installation detected." -ForegroundColor DarkYellow
    }

    Copy-Item `
        -Path $Source `
        -Destination $Destination `
        -Force

    Write-Host "  Installed successfully." -ForegroundColor Green
}

# ------------------------------------------------------------
# Install UI Governance
# ------------------------------------------------------------

Install-Directory `
    -Source $SourceUiGovernance `
    -Destination $TargetUiGovernance `
    -Name "ui-governance skill"

# ------------------------------------------------------------
# Install Frontend Design
# ------------------------------------------------------------

Install-Directory `
    -Source $SourceFrontendDesign `
    -Destination $TargetFrontendDesign `
    -Name "frontend-design skill"

# ------------------------------------------------------------
# Install UI Auditor
# ------------------------------------------------------------

Install-File `
    -Source $SourceUiAuditor `
    -Destination $TargetUiAuditor `
    -Name "ui-auditor agent"

# ------------------------------------------------------------
# Verification
# ------------------------------------------------------------

Write-Host ""
Write-Host "Verifying installation..." -ForegroundColor Cyan

$VerificationPaths = @(
    $TargetUiGovernance,
    $TargetFrontendDesign,
    $TargetUiAuditor
)

$AllValid = $true

foreach ($Path in $VerificationPaths) {
    if (Test-Path $Path) {
        Write-Host "  OK  $Path" -ForegroundColor Green
    }
    else {
        Write-Host "  FAIL $Path" -ForegroundColor Red
        $AllValid = $false
    }
}

Write-Host ""

if (-not $AllValid) {
    throw "Installation verification failed."
}

Write-Host "============================================" -ForegroundColor Green
Write-Host " Installation completed successfully." -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host ""

Write-Host "Installed skills:"
Write-Host "  ui-governance"
Write-Host "  frontend-design"
Write-Host ""

Write-Host "Installed agent:"
Write-Host "  ui-auditor"
Write-Host ""

Write-Host "Restart OpenCode after installation so the new"
Write-Host "global skills and agent are discovered."
Write-Host ""
