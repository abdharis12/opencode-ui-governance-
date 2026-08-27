---
name: ui-governance
description: Universal UI/UX governance engine that reads a project's ui-system.yaml and applies its visual style, design tokens, component rules, UX principles, creative direction, references, and UI quality standards.
---

# UI GOVERNANCE

You are operating under the project's UI/UX governance system.

The project-specific UI/UX configuration is defined by:

`ui-system.yaml`

This skill is universal and must work across different projects, frameworks, products, brands, and visual styles.

---

# 1. PROJECT CONFIGURATION

Before performing UI/UX work:

1. Locate `ui-system.yaml` at the root of the current project/worktree.
2. Read the file.
3. Treat it as the project's UI/UX configuration source of truth.
4. Determine the active visual style.
5. Determine the secondary visual style.
6. Read the project theme.
7. Read typography configuration.
8. Read layout configuration.
9. Read component foundation.
10. Read creativity configuration.
11. Read UX requirements.
12. Read configured reference pages.
13. Read configured assets when relevant.

Do not assume project-specific visual preferences.

---

# 2. MISSING CONFIGURATION

If `ui-system.yaml` does not exist:

Do NOT invent a new project-specific design system.

Instead:

1. Inspect the existing project UI.
2. Determine whether a UI/UX task can be safely completed using existing conventions.
3. Do not invent project-specific colors, typography, visual language, or component conventions.
4. Report that `ui-system.yaml` is missing when project-specific UI decisions are required.

Do not silently create `ui-system.yaml` unless the user explicitly requests project UI configuration setup.

---

# 3. ACTIVE VISUAL STYLE

The primary visual style is controlled by:

`visual.style`

Examples:

- claymorphism
- minimalist
- editorial
- corporate
- brutalist
- glassmorphism
- custom

Load the corresponding style reference from:

`references/<style>.md`

Example:

```text
visual.style: claymorphism
↓
references/claymorphism.md

The active style is mandatory.
```
# 4. MISSING STYLE REFERENCE
```text
If:

references/<style>.md

does not exist:

Do NOT silently substitute another style.

Report that the configured visual style reference is missing.

Continue only using existing project UI conventions unless the user explicitly provides another design direction.
```
# 5. SECONDARY STYLE

The optional secondary visual style is controlled by:

visual.secondary_style

Examples:
```text
glassmorphism
none
```
The secondary style must support the primary style.

It must not silently replace the primary style.

Example:
```text
Primary:
Claymorphism

Secondary:
Glassmorphism
```
Result:
Claymorphism remains the dominant material.
Glassmorphism is used only as a supporting layer.

If the secondary style is not configured or is none, do not apply it.

# 6. PROJECT THEME

Read:

theme

Use the configured:
```text
colors
typography
spacing
radius
elevation
motion
component dimensions
```
These values represent the project's visual identity.

Do not invent replacements when configured values already exist.

# 7. CREATIVE DIRECTION

Read:

visual.creativity

and:

visual.personality

Creative freedom may be:

conservative
moderate
bold

When creativity is enabled, the agent may make strong visual decisions involving:

composition
layout
asymmetry
hierarchy
visual metaphor
visual storytelling
spacing rhythm
typography scale
interaction choreography
animation
signature elements

Creative freedom does NOT permit changing the active visual system.

# 8. DISTINCTIVE WITHIN THE SYSTEM

Consistency does not mean identical page layouts.

Pages may differ significantly when their purpose requires it.

Consistency means maintaining:

product identity
design language
color system
typography system
component language
interaction language
accessibility conventions

The design principle is:

Distinctive within the system.

# 9. PRODUCT-SPECIFIC DESIGN

Use the project's real subject matter as inspiration.

Consider:

product domain
audience
artifacts
workflows
terminology
physical metaphors
organizational context
brand personality

Prefer meaningful product-specific visual concepts over generic decorative elements.

# 10. FRONTEND DESIGN

When a major UI task requires creative design:

Use the frontend-design principles defined in:

references/frontend-design.md

The purpose is to avoid generic AI-generated layouts and produce intentional visual compositions.

The frontend-design guidance must always remain subordinate to:

ui-system.yaml
active visual style
project architecture
accessibility requirements

# 11. COMPONENT FOUNDATION

Read:

components.foundation

When the project uses:
```text
shadcn
radix
```
prefer:
```text
Radix
↓
shadcn/ui
↓
Project Shared Components
↓
Feature Components
↓
Pages
```
Do not introduce another UI library when the configured component foundation already satisfies the requirement.

# 12. COMPONENT REUSE

Before creating a new component:

Search the codebase.
Inspect existing shared components.
Inspect existing UI components.
Inspect shadcn/ui components.
Inspect Radix primitives.
Determine whether an existing component can satisfy the requirement.
Reuse or extend when appropriate.

Avoid duplicate components.

# 13. DESIGN TOKEN USAGE

When visual tokens exist, consume them instead of duplicating their values.

Prefer:
```text
semantic token
↓
shared component
↓
page
```
Avoid:
```text
page
↓
hardcoded colors
↓
hardcoded shadows
↓
hardcoded radius
```
Hardcoded values are allowed when defining the actual token system or when a legitimate isolated exception exists.

# 14. PAGE PATTERNS

Before implementing a new page:

Determine the page type.
Inspect existing pages.
Identify the closest reference.
Inspect its structure.
Inspect component composition.
Inspect responsive behavior.
Reuse the pattern where appropriate.

Possible page types include:

landing
dashboard
CRUD
form
detail
search
settings
file manager
report
wizard
custom

# 15. REFERENCE PAGES

Use configured reference pages as evidence of:

visual identity
component usage
spacing rhythm
hierarchy
interaction patterns
responsive behavior

Do not blindly clone them.

Reference pages are examples of the system in use.

# 16. DESIGN DRIFT

Look for:

arbitrary colors
arbitrary spacing
arbitrary radius
arbitrary shadows
inconsistent typography
duplicate components
inconsistent interaction patterns
unrelated visual styles
unauthorized UI libraries

Correct meaningful drift where appropriate.

# 17. PAGE-LEVEL DESIGN SYSTEMS

Do not create a separate visual system inside a single page.

Avoid page-level definitions of:

primary color
typography system
radius system
elevation system
button language
card language

When a requirement is genuinely reusable, extend the shared Design System instead.

# 18. MAJOR UI WORKFLOW

For major UI:

landing page
dashboard
file manager
login
document preview
complex detail page

use:
```text
Understand
↓
Inspect
↓
Explore
↓
Brainstorm
↓
Select Direction
↓
Implement
↓
Self-Critique
↓
Audit
↓
Refine
```
Do not skip creative exploration when the page requires meaningful visual design.

# 19. SMALL UI WORKFLOW

For small UI tasks:
```text
Inspect
↓
Reuse
↓
Implement
↓
Audit
```
Do not perform unnecessary design exploration for trivial changes.

# 20. SELF-CRITIQUE

For major UI, ask:

Genericness

Does the design look like a generic AI-generated interface?

Product Specificity

Does the design belong to this product?

Style Fidelity

Does the implementation genuinely express the active visual style?

Consistency

Does it still feel like the same application?

Usability

Does the visual treatment improve understanding and interaction?

Restraint

Can unnecessary decoration be removed?

# 21. ACCESSIBILITY

Read:

references/accessibility.md

Accessibility must remain active regardless of visual style.

Never sacrifice:

semantic HTML
keyboard navigation
focus visibility
accessible names
contrast
reduced motion
responsive usability

# 22. UX

Read:

references/ux-governance.md

Use the project's UX guidance for:

hierarchy
terminology
feedback
loading
empty states
error states
forms
destructive actions
navigation
search
filtering
recovery

# 23. VISUAL STYLE + UX

Visual creativity must never obscure:

content
hierarchy
action
status
navigation
feedback

A visually impressive interaction that users cannot understand is unsuccessful.

# 24. RESPONSIVE DESIGN

All UI work must consider:

mobile
tablet
desktop

Use project-established breakpoints.

Do not create unrelated breakpoint systems.

The visual style must remain coherent at every breakpoint.

# 25. AUDIT

For significant UI changes:

Run the UI audit process.
Inspect Design System compliance.
Inspect visual style fidelity.
Inspect component reuse.
Inspect UX.
Inspect accessibility.
Inspect responsiveness.
Inspect design drift.
Fix meaningful findings.

# 26. PROJECT-SPECIFIC REFERENCES

When references are configured in ui-system.yaml, use them as project-local visual references.

Example:

references:
  landing: "resources/js/pages/welcome.tsx"
  dashboard: "resources/js/pages/dashboard.tsx"

Treat those files as examples of approved implementation.

Do not assume they are the only valid composition.

# 27. PROJECT-SPECIFIC ASSETS

When assets are configured:

Use existing assets where appropriate.

Do not recreate approved branding assets unnecessarily.

Do not invent official logos or unsupported brand assets.

# 28. GOVERNANCE

Read:

governance

Use the configured values to determine how strictly to enforce:

reference-first
component reuse
UI audit
no random colors
no random shadows
no random radius
no page-specific design systems
accessibility priority
task scope

# 29. FAILURE CONDITIONS

The implementation should be considered unsuccessful when it:

ignores the active visual style
creates a new visual system without justification
duplicates existing components unnecessarily
breaks accessibility
ignores configured project tokens
introduces unrelated UI libraries
creates major visual drift
invents unsupported project-specific claims

# 30. FINAL PRINCIPLE

This system exists to achieve:

Strong design system + controlled creativity + reusable components + excellent UX + accessibility.

The agent should be:

creative in expression, disciplined in system.
