$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$OpenCodeRoot = Join-Path $HOME ".config\opencode"

$SourceSkills = Join-Path $RepoRoot "skills"
$SourceAgents = Join-Path $RepoRoot "agents"

$TargetSkills = Join-Path $OpenCodeRoot "skills"
$TargetAgents = Join-Path $OpenCodeRoot "agents"

Write-Host ""
Write-Host "OpenCode UI Governance Installer" -ForegroundColor Cyan
Write-Host "=================================" -ForegroundColor Cyan
Write-Host ""

# Ensure OpenCode global directories exist.
New-Item -ItemType Directory -Force $TargetSkills | Out-Null
New-Item -ItemType Directory -Force $TargetAgents | Out-Null

# Install / update UI Governance skill.
$SourceSkill = Join-Path $SourceSkills "ui-governance"
$TargetSkill = Join-Path $TargetSkills "ui-governance"

Write-Host "Installing ui-governance skill..." -ForegroundColor Yellow

if (Test-Path $TargetSkill) {
    Remove-Item $TargetSkill -Recurse -Force
}

Copy-Item $SourceSkill $TargetSkills -Recurse -Force

# Install / update UI Auditor agent.
$SourceAgent = Join-Path $SourceAgents "ui-auditor.md"
$TargetAgent = Join-Path $TargetAgents "ui-auditor.md"

Write-Host "Installing ui-auditor agent..." -ForegroundColor Yellow

Copy-Item $SourceAgent $TargetAgent -Force

Write-Host ""
Write-Host "Installation complete." -ForegroundColor Green
Write-Host ""
Write-Host "Installed to:"
Write-Host "  $OpenCodeRoot"
Write-Host ""
Write-Host "Skill:"
Write-Host "  $TargetSkill"
Write-Host ""
Write-Host "Agent:"
Write-Host "  $TargetAgent"
Write-Host ""
