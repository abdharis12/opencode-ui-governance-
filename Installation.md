# Instalasi Windows

Setelah clone repository opencode-ui-governance. buat folder baru:
Example :
```text
C:\Dev\tooling
```
Kemudian jika sudah miliki :
```text
skills/frontend-design/SKILL.md
```
jalankan:
```text
cd C:\Dev\tooling\opencode-ui-governance-
```
kemudian:
```text
.\install.ps1
```
Kalau execution policy:
```text
Set-ExecutionPolicy -Scope Process Bypass
.\install.ps1
```
Setelah selesai:
```text
Get-Item "$HOME\.config\opencode\skills\ui-governance\SKILL.md"
Get-Item "$HOME\.config\opencode\skills\frontend-design\SKILL.md"
Get-Item "$HOME\.config\opencode\agents\ui-auditor.md"
```
Ketiganya harus ditemukan.

# Hasil akhir di komputer Windows
```text
C:\Users\DELL\.config\opencode\
│
├── skills\
│   │
│   ├── ui-governance\
│   │   ├── SKILL.md
│   │   └── references\
│   │       ├── claymorphism.md
│   │       ├── minimalist.md
│   │       ├── frontend-design.md
│   │       ├── component-governance.md
│   │       ├── ux-governance.md
│   │       └── accessibility.md
│   │
│   └── frontend-design\
│       ├── SKILL.md
│       └── LICENSE.txt
│
├── agents\
│   └── ui-auditor.md
│
├── node_modules\
├── opencode.json
├── opencode.jsonc
├── package.json
└── ...
```
# Tahap Instalasi dan Penggunaan di 3 OS.

Saya sarankan satu prinsip:

Git repository = source of truth. OpenCode global directory = hasil instalasi.

OpenCode saat ini secara resmi mencari global skills di ~/.config/opencode/skills/<name>/SKILL.md dan global agents di ~/.config/opencode/agents/<name>.md. Supporting files seperti references/*.md boleh berada di dalam direktori skill yang sama.

# 1. Arsitektur yang kita pakai
```text
                    GitHub
                       │
            opencode-ui-governance
                       │
          ┌────────────┼────────────┐
          ↓            ↓            ↓
       Windows      Linux Mint     macOS
          │            │            │
          ↓            ↓            ↓
   ~/.config/... ~/.config/... ~/.config/...
          │            │            │
          └────────────┼────────────┘
                       ↓
                    OpenCode
```
Jangan Git-kan seluruh folder:
```text
~/.config/opencode
```
Karena di sana ada konfigurasi dan dependency lokal seperti opencode.json, node_modules, dan sebagainya.

Yang Anda sinkronkan hanya:
```text
opencode-ui-governance
```

# 2. Struktur repository final

Saya sarankan repository Anda sekarang ditambah 2 file installer:
```text
opencode-ui-governance/
│
├── install.ps1
├── install.sh
│
├── skills/
│   └── ui-governance/
│       ├── SKILL.md
│       └── references/
│           ├── claymorphism.md
│           ├── minimalist.md
│           ├── frontend-design.md
│           ├── component-governance.md
│           ├── ux-governance.md
│           └── accessibility.md
│
├── agents/
│   └── ui-auditor.md
│
├── templates/
│   └── ui-system.yaml
│
└── README.md
```

# 3. Windows — instalasi

Anda sudah punya:
```text
C:\Users\DELL\.config\opencode\
```
Sekarang clone repository ke lokasi terpisah.

Misalnya:
```text
cd C:\Dev
git clone https://github.com/abdharis12/opencode-ui-governance-.git
cd opencode-ui-governance-
```
Kalau nama repository akhirnya Anda rapikan menjadi:
```text
opencode-ui-governance
```
maka:
```text
cd C:\Dev
git clone https://github.com/abdharis12/opencode-ui-governance.git
cd opencode-ui-governance
```

# 4. install.ps1

Tambahkan file:
```text
install.ps1
```
dengan isi:
```text
$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$OpenCodeRoot = Join-Path $HOME ".config\opencode"

$SourceSkill = Join-Path $RepoRoot "skills\ui-governance"
$SourceAgent = Join-Path $RepoRoot "agents\ui-auditor.md"

$TargetSkills = Join-Path $OpenCodeRoot "skills"
$TargetAgents = Join-Path $OpenCodeRoot "agents"

$TargetSkill = Join-Path $TargetSkills "ui-governance"
$TargetAgent = Join-Path $TargetAgents "ui-auditor.md"

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host " OpenCode UI Governance Installer" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Validate source files.
if (-not (Test-Path $SourceSkill)) {
    throw "Source skill not found: $SourceSkill"
}

if (-not (Test-Path $SourceAgent)) {
    throw "Source agent not found: $SourceAgent"
}

# Ensure OpenCode directories exist.
New-Item -ItemType Directory -Path $TargetSkills -Force | Out-Null
New-Item -ItemType Directory -Path $TargetAgents -Force | Out-Null

Write-Host "[1/2] Installing ui-governance skill..." -ForegroundColor Yellow

if (Test-Path $TargetSkill) {
    Remove-Item $TargetSkill -Recurse -Force
}

Copy-Item `
    -Path $SourceSkill `
    -Destination $TargetSkill `
    -Recurse `
    -Force

Write-Host "      Installed: $TargetSkill" -ForegroundColor Green

Write-Host "[2/2] Installing ui-auditor agent..." -ForegroundColor Yellow

Copy-Item `
    -Path $SourceAgent `
    -Destination $TargetAgent `
    -Force

Write-Host "      Installed: $TargetAgent" -ForegroundColor Green

Write-Host ""
Write-Host "Installation completed successfully." -ForegroundColor Green
Write-Host ""
Write-Host "OpenCode global directory:"
Write-Host "  $OpenCodeRoot"
Write-Host ""
```
Kemudian:
```text
.\install.ps1
```
Kalau PowerShell menolak execution policy, jalankan untuk sesi tersebut:
```text
Set-ExecutionPolicy -Scope Process Bypass
.\install.ps1
```

# 5. Verifikasi Windows

Jalankan:
```text
Get-ChildItem "$HOME\.config\opencode\skills\ui-governance" -Recurse
```
Anda harus mendapatkan:
```text
SKILL.md
references\
    accessibility.md
    claymorphism.md
    component-governance.md
    frontend-design.md
    minimalist.md
    ux-governance.md
```
Kemudian:
```text
Get-Item "$HOME\.config\opencode\agents\ui-auditor.md"
```

# 6. Linux Mint

Di Linux Mint, OpenCode menggunakan:
```text
~/.config/opencode/
```
sebagai global config/skill location.

Clone:
```text
mkdir -p ~/dev
cd ~/dev
```
```text
git clone https://github.com/abdharis12/opencode-ui-governance-.git
cd opencode-ui-governance-
```
Lalu:
```text
chmod +x install.sh
./install.sh
```
Isi install.sh:
```text
#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OPENCODE_ROOT="${HOME}/.config/opencode"

SOURCE_SKILL="${REPO_ROOT}/skills/ui-governance"
SOURCE_AGENT="${REPO_ROOT}/agents/ui-auditor.md"

TARGET_SKILLS="${OPENCODE_ROOT}/skills"
TARGET_AGENTS="${OPENCODE_ROOT}/agents"

TARGET_SKILL="${TARGET_SKILLS}/ui-governance"
TARGET_AGENT="${TARGET_AGENTS}/ui-auditor.md"

echo
echo "========================================"
echo " OpenCode UI Governance Installer"
echo "========================================"
echo

if [[ ! -d "${SOURCE_SKILL}" ]]; then
    echo "ERROR: Source skill not found:"
    echo "${SOURCE_SKILL}"
    exit 1
fi

if [[ ! -f "${SOURCE_AGENT}" ]]; then
    echo "ERROR: Source agent not found:"
    echo "${SOURCE_AGENT}"
    exit 1
fi

mkdir -p "${TARGET_SKILLS}"
mkdir -p "${TARGET_AGENTS}"

echo "[1/2] Installing ui-governance skill..."

rm -rf "${TARGET_SKILL}"

cp -R "${SOURCE_SKILL}" "${TARGET_SKILL}"

echo "      Installed: ${TARGET_SKILL}"

echo "[2/2] Installing ui-auditor agent..."

cp "${SOURCE_AGENT}" "${TARGET_AGENT}"

echo "      Installed: ${TARGET_AGENT}"

echo
echo "Installation completed successfully."
echo
echo "OpenCode global directory:"
echo "  ${OPENCODE_ROOT}"
echo
```

# 7. macOS

Sama persis dengan Linux.

Clone:
```text
mkdir -p ~/dev
cd ~/dev

git clone https://github.com/abdharis12/opencode-ui-governance-.git
cd opencode-ui-governance-
```
Kemudian:
```text
chmod +x install.sh
./install.sh
```
Tidak perlu membuat installer macOS terpisah.

# 8. Setelah ter-install di ketiga OS

Hasilnya:
```text
Windows
C:\Users\DELL\.config\opencode\
├── skills\
│   └── ui-governance\
│       ├── SKILL.md
│       └── references\
└── agents\
    └── ui-auditor.md
Linux Mint
~/.config/opencode/
├── skills/
│   └── ui-governance/
│       ├── SKILL.md
│       └── references/
└── agents/
    └── ui-auditor.md
macOS
~/.config/opencode/
├── skills/
│   └── ui-governance/
│       ├── SKILL.md
│       └── references/
└── agents/
    └── ui-auditor.md
```
Struktur global tersebut memang merupakan struktur yang OpenCode gunakan untuk discovery skill dan agent.

# 9. Bagaimana dengan frontend-design?

Saya sarankan jangan memasukkannya ke dalam ui-governance.

Pisahkan:
```text
~/.config/opencode/skills/
│
├── ui-governance/
│
└── frontend-design/
```
ui-governance:
```text
project design rules
theme
style
UX
component governance
```
frontend-design:
```text
creative visual direction
composition
creative exploration
distinctive layouts
```
Jadi:
```text
frontend-design
      +
ui-governance
      ↓
Creative UI
within project system
```
OpenCode mendukung beberapa global skills secara bersamaan dan memilih/memuatnya sesuai kebutuhan melalui skill mechanism.

# 10. Bagaimana project Laravel menggunakan sistem ini?

Ini bagian yang paling penting.

Misalnya Anda membuat project:
```text
driveku/
```
Di root project Anda cukup punya:
```text
driveku/
├── AGENTS.md
├── ui-system.yaml
├── opencode.json
├── app/
├── resources/
└── ...
```
Copy template:
```text
opencode-ui-governance/templates/ui-system.yaml
```
menjadi:
```text
driveku/ui-system.yaml
```
Lalu isi:
```text
version: 1

project:
  name: "Driveku"
  description: "Government document and data storage platform"
  domain: "government-web-app"
  audience: "government staff"
  language: "id"

visual:
  style: "claymorphism"
  secondary_style: "glassmorphism"

  personality:
    - professional
    - modern
    - tactile
    - trustworthy
    - distinctive

  creativity:
    level: "bold"
    allow_asymmetry: true
    allow_visual_risk: true
    signature_element: true

theme:
  mode: "light"

  colors:
    primary: "#4F6B6A"
    primary_foreground: "#FFFFFF"

    secondary: "#CFC0A4"
    secondary_foreground: "#243332"

    background: "#EEF2F1"
    foreground: "#243332"

    surface: "#F5F7F6"
    surface_elevated: "#FFFFFF"

    muted: "#E8EEED"
    muted_foreground: "#64706F"

    border: "#D7E0DE"
    input: "#D7E0DE"
    ring: "#4F6B6A"

    success: "#4C8A67"
    warning: "#C28A3A"
    destructive: "#B85C5C"
    info: "#5181A8"

  typography:
    font_family: ""
    display_family: ""
    body_family: ""

  spacing:
    density: "comfortable"

  radius:
    scale: "large"

  elevation:
    intensity: "medium"

  clay:
    enabled: true
    intensity: "strong"
    matte: true
    diffuse_lighting: true
    highlights: true
    soft_shadows: true
    inset_depth: true
    pressed_state: true

  glass:
    enabled: true
    intensity: "subtle"
    blur: "medium"
    opacity: 0.65
    reflections: "subtle"

components:
  foundation:
    - "shadcn"
    - "radix"

  reuse_existing: true

ux:
  responsive: true
  mobile_first: true
  accessibility: "strict"
  reduced_motion: true

  interaction:
    tactile: true
    feedback: true
    hover_feedback: true
    focus_visible: true

references:
  landing: ""
  dashboard: ""
  crud: ""
  form: ""
  detail: ""
  search: ""
  settings: ""
  file_manager: ""

assets:
  logo: ""
  brand_mark: ""
  organization_logo: ""
  favicon: ""

content:
  tone: "professional"
  factual_claims_only: true

governance:
  reference_first: true
  reuse_components: true
  audit_after_ui_task: true
  no_unapproved_design_system: true
  no_random_colors: true
  no_random_radius: true
  no_random_shadows: true
  no_random_typography: true
  no_random_spacing: true
  no_page_specific_design_system: true
  accessibility_over_visual_effects: true
  limit_task_scope: true
```

# 11. Lalu bagaimana memanggilnya?

Setelah OpenCode terpasang, masuk project:
```text
cd driveku
opencode
```
Kemudian minta:

Use the ui-governance skill.

Do not modify any files.

Read ui-system.yaml and report:
```text
1. project name
2. visual style
3. secondary style
4. primary color
5. secondary color
6. component foundation
7. creativity level
8. configured reference pages
```
Also state which visual reference files are relevant.

Do not make any changes.

OpenCode seharusnya menemukan ui-governance sebagai global skill dan memuatnya sesuai kebutuhan.

# 12. Test kedua: pastikan Claymorphism benar-benar terbaca

Jalankan:

Use the ui-governance skill.

Do not modify files.

Explain how the current project's Claymorphism configuration should affect:

- Button
- Card
- Input
- Dialog
- Table
- Page background

Use the project's ui-system.yaml and claymorphism reference.

Do not write code.

Kalau hasilnya kira-kira:

Button
→ tactile raised surface
→ soft shadow
→ pressed state

Card
→ matte sculpted surface
→ soft elevation

Input
→ recessed surface
→ subtle inner depth

...

berarti routing governance sudah berjalan.

# 13. Test ketiga: frontend-design

Setelah Anda punya skill frontend-design, gunakan:

Use both:

- frontend-design
- ui-governance

Do not modify files.

Analyze the current Welcome Page.

Explore three distinctive visual directions.

Every direction must:

- remain within the project's active visual style
- follow ui-system.yaml
- use existing component foundations
- remain appropriate for the product

For each direction explain:

1. composition
2. hierarchy
3. signature visual
4. motion
5. component strategy

Then recommend one direction.

Do not modify files.

Ini nanti memberi kita:
```text
frontend-design
       ↓
creative exploration

ui-governance
       ↓
design boundaries
```
# 14. Test ke project baru dengan Minimalist

Misalnya project lain:
```text
another-app/
└── ui-system.yaml
```
ubah:
```text
visual:
  style: "minimalist"
  secondary_style: "none"
```
dan:
```text
theme:
  colors:
    primary: "#2563EB"
    secondary: "#64748B"
```
Kemudian prompt yang sama:
```text
Use the ui-governance skill.

Analyze the current dashboard.

Do not modify files.

Engine harus menggunakan:

minimalist.md

bukan:

claymorphism.md
```
# 15. Workflow sehari-hari Anda

Setelah semuanya selesai, pekerjaan Anda menjadi sangat sederhana.
```text
Project baru
Laravel project
    ↓
copy ui-system.yaml
    ↓
set brand/style/color
    ↓
OpenCode
Buat halaman
Implement User Management.
```
Follow ui-governance.
Use the appropriate page pattern.
Inspect existing pages first.
Run UI audit after implementation.
Redesign
Use frontend-design + ui-governance.

Redesign the Dashboard.

Keep the active visual style from ui-system.yaml.
Be distinctive and intentional.
Do not modify files yet.
Audit
Run ui-auditor against the current page.

# 16. Update ketika Anda berpindah komputer

Misalnya Anda memperbaiki:

claymorphism.md

di kantor.

Di Git:
```text
git add .
git commit -m "refine claymorphism rules"
git push
```
Di rumah:
```text
cd ~/dev/opencode-ui-governance
git pull
./install.sh
```
Di Mac:
```text
cd ~/dev/opencode-ui-governance
git pull
./install.sh
```
Satu perubahan → tiga mesin sinkron.

# 17. Versi yang lebih ideal nanti

Setelah sistem ini terbukti bekerja, kita bisa upgrade menjadi:
```text
opencode-ui-governance/
│
├── install.ps1
├── install.sh
├── update.ps1
├── update.sh
│
├── skills/
├── agents/
├── templates/
│
├── schemas/
│   └── ui-system.schema.json
│
└── README.md
```
Kemudian kita bisa membuat validasi:
```text
ui-system.yaml
      ↓
schema validation
      ↓
PASS / FAIL
```
Ini akan mencegah typo seperti:
```text
visual:
  style: claymorphism
```
tetapi salah:
```text
theme:
  color:
```
padahal engine mengharapkan:
```text
theme:
  colors:
```

## Urutan yang saya sarankan sekarang
```text
✅ Repository dibuat
✅ Semua governance/reference file dibuat
✅ ui-system.yaml dibuat
✅ ui-auditor dibuat

NEXT:

1. Tambahkan install.ps1
2. Tambahkan install.sh
3. Commit + push
4. Install di Windows
5. Test skill discovery
6. Install/test frontend-design
7. Test dengan Driveku
8. Test project kedua dengan Minimalist
```
Yang jangan dilakukan dulu adalah meng-copy seluruh repository ke setiap Laravel project. Cukup install engine secara global sekali per komputer, lalu setiap project memiliki satu ui-system.yaml sebagai identitas desainnya.

Dan karena Anda bekerja di tiga OS, model Git repository + installer per OS jauh lebih aman daripada mencoba menyinkronkan C:\Users\DELL\.config\opencode secara langsung. OpenCode sendiri memang menyediakan global skill location dan project-local overrides, sehingga model ini sesuai dengan mekanisme discovery-nya.
