# OpenCode UI Governance

Universal UI/UX governance system for OpenCode.

This repository provides reusable UI/UX design rules, visual style references, accessibility guidance, component governance, creative design principles, and UI auditing for multiple projects.

The system is designed to work across different:

- applications
- frameworks
- operating systems
- visual styles
- brands
- domains

---

# 1. PURPOSE

The purpose of this repository is to prevent UI inconsistency and design drift when building applications with AI coding agents.

Instead of teaching an AI agent the same UI rules repeatedly for every project, the rules are maintained once as a global governance engine.

Each project only defines its own UI identity through:

```text
ui-system.yaml
```

# 2. CORE CONCEPT

The system separates:

GLOBAL KNOWLEDGE
+
PROJECT CONFIGURATION

Global knowledge defines:

how UI should be designed
how components should be governed
how UX should behave
how accessibility should be handled
how visual styles work
how UI should be audited

Project configuration defines:
```text
product identity
visual style
colors
typography
creativity level
reference pages
project-specific preferences
```
# 3. ARCHITECTURE
                GLOBAL UI GOVERNANCE
                         │
                         ▼
                  ui-system.yaml
                         │
              ┌──────────┴──────────┐
              │                     │
        Visual Style            Project Data
              │                     │
       ┌──────┼──────┐              │
       ▼      ▼      ▼              │
     Clay   Minimal  Other          │
       │      │      │              │
       └──────┼──────┘              │
              │                     │
              └──────────┬──────────┘
                         ▼
                 Component System
                         │
                    UX System
                         │
                 Accessibility
                         │
                         ▼
                      Pages
                         │
                         ▼
                    UI Auditor
                    
# 4. REPOSITORY STRUCTURE
opencode-ui-governance/
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

# 5. GLOBAL VS PROJECT

The repository contains reusable global knowledge.

Projects should NOT copy all of this repository into their source code.

A project only needs:

project/
├── AGENTS.md
├── ui-system.yaml
└── ...

# 6. PROJECT CONFIGURATION

Copy:
```text
templates/ui-system.yaml

into the root of a project:

ui-system.yaml
```
Then configure only the project's specific decisions.

# 7. VISUAL STYLE

The active visual style is configured using:

visual:
  style: "claymorphism"

Examples:
```text
visual:
  style: "claymorphism"
  secondary_style: "glassmorphism"

or:

visual:
  style: "minimalist"
  secondary_style: "none"
```
The UI Governance Engine loads the corresponding global visual guidance.

# 8. THEME

Project colors are configured in:
```text
theme:
  colors:
    primary: "#000000"
    secondary: "#000000"
```
The project controls the values.

The global visual system controls how those values should be used.

# 9. EXAMPLE — CLAYMORPHISM PROJECT
```text
project:
  name: "Driveku"

visual:
  style: "claymorphism"
  secondary_style: "glassmorphism"

  personality:
    - professional
    - modern
    - tactile
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
    secondary: "#CFC0A4"
    background: "#EEF2F1"
    surface: "#F5F7F6"
    foreground: "#243332"

components:
  foundation:
    - "shadcn"
    - "radix"
```
# 10. EXAMPLE — MINIMALIST PROJECT
```text
The same global engine can be used for another project:

project:
  name: "Example App"

visual:
  style: "minimalist"
  secondary_style: "none"

  personality:
    - minimal
    - precise
    - calm
    - professional

  creativity:
    level: "moderate"
    allow_asymmetry: true
    allow_visual_risk: false
    signature_element: false

theme:
  mode: "light"

  colors:
    primary: "#2563EB"
    secondary: "#64748B"
    background: "#FFFFFF"
    surface: "#F8FAFC"
    foreground: "#0F172A"

components:
  foundation:
    - "shadcn"
    - "radix"
```
No global skill needs to be rewritten.

# 11. DESIGN SYSTEM PRINCIPLE

The project configuration answers:

WHAT should this product look like?

The global references answer:

HOW should that visual language be implemented?

Example:

ui-system.yaml
```text
style = claymorphism
primary = #4F6B6A
secondary = #CFC0A4
creativity = bold
```
Global governance:
```text
claymorphism.md
frontend-design.md
component-governance.md
ux-governance.md
accessibility.md
```
# 12. CREATIVE DESIGN

The system intentionally allows creative freedom.

Consistency does NOT mean every page must have the same composition.

A dashboard, landing page, file manager, and detail page can have different layouts.

They should still share:

visual language
color system
typography
component language
interaction patterns
accessibility
product identity

The principle is:

Distinctive within the system.

# 13. COMPONENT FOUNDATION

When configured, the system can be used with:

shadcn/ui
Radix UI
other approved component foundations

For projects using shadcn and Radix:

Radix
↓
shadcn/ui
↓
Project Components
↓
Feature Components
↓
Pages

Reuse existing components before creating new ones.

# 14. UI AUDIT

The repository provides:

agents/ui-auditor.md

The UI auditor checks:

design system compliance
visual style
color
typography
spacing
radius
elevation
component reuse
UX
accessibility
responsive behavior
design drift

The goal is not to make every page identical.

The goal is to preserve the product's design language.

# 15. OPENCODE INSTALLATION

OpenCode can discover global skills from its global configuration directory.

Typical structure:

~/.config/opencode/
├── skills/
│   └── ui-governance/
│       ├── SKILL.md
│       └── references/
│
└── agents/
    └── ui-auditor.md

On Windows, the equivalent commonly resolves under:

%USERPROFILE%\.config\opencode\

# 16. MULTI-OS USAGE

This repository is designed to be shared through Git.

Do not synchronize the entire OpenCode configuration directory between operating systems.

Instead:

Git Repository
      │
      ├── Windows
      ├── Linux
      └── macOS

Each operating system maintains its own local OpenCode configuration.

The governance repository remains the shared source.

# 17. RECOMMENDED DIRECTORY LAYOUT

Example:

Windows:
```text
C:\Dev\opencode-ui-governance\
```
Linux:
```text
~/dev/opencode-ui-governance/
```
macOS:
```text
~/dev/opencode-ui-governance/
```
The physical path may differ.

The repository contents remain identical.

# 18. VERSION CONTROL

Use Git to manage the governance system.

Recommended workflow:
```text
Edit
↓
Test
↓
Commit
↓
Push
↓
Pull on other machines
```
Recommended release tags:

v1.0.0
v1.1.0
v1.2.0

This allows projects to control when they adopt governance changes.

# 19. GLOBAL CHANGES

Changes to global governance may affect multiple projects.

Before changing:
```text
visual rules
component rules
UX rules
accessibility rules
```
consider the impact on existing applications.

# 20. PROJECT OVERRIDES

A project may provide additional local UI rules when necessary.

Use project-local overrides only when the requirement genuinely belongs to that project.

Do not fork the entire governance system.

# 21. ADDING A NEW VISUAL STYLE

To add another visual style:

Create a new reference file.

Example:
```text
references/editorial.md
Define the visual language.
Add the style to the supported-style documentation.
Test it using ui-system.yaml.
Add examples where useful.
```
The global UI engine does not need to be duplicated.

# 22. ADDING A NEW COMPONENT FOUNDATION

The governance system can support different foundations.

Examples:
```text
shadcn
radix
native
custom
```
Project configuration determines which foundation is used.

# 23. DESIGN TOKENS

Project-specific tokens belong in:

ui-system.yaml

Examples:
```text
primary color
secondary color
background
typography
radius preference
elevation preference
Clay intensity
Glass intensity
```
Detailed rules remain in the global visual references.

# 24. Figma / DESIGN REFERENCE

A project may use Figma, screenshots, or other visual references.

The recommended process is:
```text
Figma / Screenshot
        ↓
Design Analysis
        ↓
Project Design Tokens
        ↓
ui-system.yaml
        ↓
Shared UI Components
        ↓
Pages
```
Do not turn screenshots directly into page-specific styling.

# 25. DESIGN REFERENCE PAGES

Projects may configure approved reference pages:

references:
  landing: "resources/js/pages/welcome.tsx"
  dashboard: "resources/js/pages/dashboard.tsx"
  crud: "resources/js/pages/users/index.tsx"

Reference pages provide visual evidence of how the project's design system is actually implemented.

# 26. AI ENGINEERING PRINCIPLE

The governance system should reduce AI improvisation where consistency matters while preserving creative freedom where design benefits from it.

The desired balance is:

Strong System
+
Controlled Creativity
+
Reusable Components
+
UX Discipline
+
Accessibility

# 27. NON-GOALS

This repository is NOT intended to:

replace the project's framework
replace application architecture
dictate business logic
replace product requirements
force identical page layouts
eliminate creative design
provide application-specific business rules
28. FINAL PRINCIPLE

The system exists to make AI-generated interfaces feel intentionally designed and consistent across an entire product.

The objective is:

one product identity, many purposeful page expressions.
