
---

## `skills/ui-governance/references/component-governance.md`

```markdown
# COMPONENT GOVERNANCE
```
## Purpose

This document defines universal rules for selecting, reusing, creating, modifying, and organizing UI components.

The goal is to maximize consistency, reuse, accessibility, maintainability, and visual control.

---

# 1. COMPONENT HIERARCHY

When a project uses a component framework such as shadcn/ui and Radix UI, prefer this hierarchy:

```text
Primitive / Behavior
        ↓
Foundation Component
        ↓
Shared Project Component
        ↓
Feature Component
        ↓
Page
```

For a typical React project:
```text
Radix UI
    ↓
shadcn/ui
    ↓
Project UI Components
    ↓
Feature Components
    ↓
Pages
```
Do not bypass existing layers without a valid reason.

# 2. SEARCH BEFORE CREATE

Before creating a component:

Search the existing codebase.
Search the shared UI directory.
Search related feature components.
Check the project component registry if available.
Inspect existing shadcn/ui components.
Inspect relevant Radix primitives.
Check similar pages.

Only create a new component after determining that an existing component is not appropriate.

# 3. REUSE BEFORE DUPLICATION

Prefer existing components whenever the responsibility is the same.

Prefer:

Button

over:

MenuButton
ProductButton
UserButton

when the differences are only contextual or visual.

Prefer:

Card

over:

MenuCard
CategoryCard
ProductCard

when no genuinely unique behavior exists.

# 4. COMPONENT RESPONSIBILITY

A component should have a clear responsibility.

Avoid components that simultaneously own unrelated concerns such as:

data fetching
business workflow
layout
visual styling
navigation
persistence

unless that composition is intentional and appropriate to the architecture.

# 5. PRESENTATION VS BUSINESS LOGIC

Presentation components should primarily manage presentation and interaction.

Business rules should remain in the appropriate application/domain layer.

Avoid embedding complex business logic directly inside reusable UI components.

# 6. VARIANTS BEFORE DUPLICATES

When components share the same responsibility but require controlled visual or behavioral differences, prefer variants.

Example:

Button
├── primary
├── secondary
├── outline
├── ghost
└── destructive

Do not create several components that differ only by styling.

# 7. GLOBAL VS FEATURE COMPONENTS

Use the following distinction:

Global Component

Reusable across many domains.

Examples:
```text
Button
Card
Dialog
Input
Table
Badge
Application Component
```
Reusable within the application.

Examples:

PageHeader
DataTableToolbar
EmptyState
AppSidebar
Feature Component

Specific to a feature/domain.

Examples:
```text
FilePreview
FolderTree
DocumentMetadata
OrderSummary
Page Component
```
Specific to one page's composition.

A page component may use global, application, and feature components.

# 8. VISUAL STYLING LOCATION

Global visual decisions should be centralized.

Prefer:
```text
Design Tokens
    ↓
Foundation Component
    ↓
Shared Component
    ↓
Page
```
Avoid repeating global styling inside pages.

Examples of values that should generally be centralized:

colors
radius
shadows
elevation
typography
control heights
spacing
focus treatments

# 9. DESIGN SYSTEM INTEGRATION

Components must consume the project's Design System.

Do not create component-specific visual values that contradict the active design system.

If a component requires a new global visual capability, consider:

a new design token
a new component variant
a shared component change

before creating a page-specific override.

# 10. SHADCN/UI GOVERNANCE

When shadcn/ui is configured:

prefer existing shadcn components
preserve composability
preserve component APIs where practical
follow the project's theme tokens
extend variants when appropriate
avoid unnecessary rewrites

Do not replace shadcn components with another UI library merely for convenience.

# 11. RADIX UI GOVERNANCE

When Radix UI is configured:

Preserve:

keyboard interaction
focus management
accessibility behavior
controlled/uncontrolled behavior where applicable
portal behavior when required
interaction semantics

Visual customization must not break Radix behavior.

# 12. COMPONENT API

Shared component APIs should be:

predictable
composable
explicit
consistent
minimally coupled

Avoid unnecessary component-specific props that solve only one page's problem.

# 13. CUSTOMIZATION

Prefer composition over deeply specialized APIs.

Example:

Prefer:

<Card>
  <CardHeader />
  <CardContent />
</Card>

when the design system supports it.

Avoid creating:

SpecialCardWithHeaderAndActionAndBadgeAndFooter

unless it represents a genuinely reusable domain concept.

# 14. COMPONENT MODIFICATION

Before modifying a shared component:

Search all usages.
Understand current behavior.
Understand existing variants.
Determine impact.
Preserve compatibility where practical.
Verify affected pages.

Shared components should never be modified casually.

# 15. BREAKING CHANGES

A shared component change is considered high impact if it changes:

public props
DOM structure relied upon by consumers
interaction behavior
styling defaults
accessibility behavior

Before making such a change, inspect its consumers.

# 16. COMPONENT DISCOVERY

The agent should prefer the following discovery order:

Existing exact component
        ↓
Existing component with variant
        ↓
Existing component composition
        ↓
Shared application component
        ↓
New reusable component
        ↓
Page-specific component

Use the highest appropriate level.

# 17. NEW COMPONENT DECISION

A new component is justified when at least one of these is true:

no existing component satisfies the requirement
the behavior is genuinely new
the composition is reused
accessibility logic benefits from encapsulation
the component represents an important domain concept
the current abstraction would become misleading

# 18. DUPLICATION DETECTION

Look for duplication in:

JSX
styling
interaction logic
validation UI
loading states
empty states
error states

Two components should be reviewed for consolidation when they perform substantially the same responsibility.

# 19. PAGE-SPECIFIC OVERRIDES

Page-specific overrides are allowed when:

the design requirement is genuinely page-specific
the behavior is genuinely page-specific
the override does not violate the Design System
the override does not duplicate an existing global pattern

Avoid page-level overrides for global visual decisions.

# 20. COMPONENT STATES

Reusable interactive components should account for applicable states:

default
hover
focus
active
pressed
selected
disabled
loading
error

Do not assume a component is complete after styling only its default state.

# 21. RESPONSIVE COMPONENTS

Shared components should behave predictably across:

mobile
tablet
desktop

Do not introduce component-specific breakpoint conventions without a valid reason.

# 22. ACCESSIBILITY

Reusable components must preserve:

semantic structure
keyboard navigation
focus visibility
accessible names
ARIA where needed
sufficient contrast

Accessibility is part of component quality.

# 23. PERFORMANCE

Avoid unnecessary:

rerenders
duplicated state
large dependencies
excessive client-side logic
expensive visual effects

Component abstractions should remain practical.

# 24. TESTING

Where components contain meaningful interaction or behavior, use the project's established testing approach.

Prefer testing observable behavior over implementation details.

Do not create unnecessary tests for trivial static markup when project conventions do not require them.

# 25. DOCUMENTATION

Reusable components should have clear naming and predictable APIs.

Do not create documentation files solely to document a trivial component unless project policy requires it.

# 26. COMPONENT NAMING

Names should describe responsibility.

Prefer:

DataTable
ConfirmDialog
FilePreview
DocumentMetadata

Avoid:

AwesomeTable
CoolDialog
NewCard2
FinalButton
CustomThing

# 27. VISUAL CONSISTENCY

Two components with equivalent responsibilities should not have unrelated visual languages.

A new component must inherit:

typography
color
spacing
radius
elevation
interaction language

from the active Design System.

# 28. DESIGN SYSTEM EXTENSION

When several components need the same new capability, consider extending the shared system.

For example:

Need:
New tactile surface

Bad:
Create custom styles in five pages.

Better:
Add a reusable surface token/variant.

# 29. COMPONENT QUALITY CHECK

Before considering a component complete:

 Responsibility is clear.
 Existing equivalent components were checked.
 Duplication was avoided.
 Design tokens are used.
 Variants are used where appropriate.
 Accessibility is preserved.
 Responsive behavior is considered.
 Interaction states are handled.
 API is predictable.
 Shared styling is centralized where appropriate.

# 30. FINAL PRINCIPLE

The component system should make the application easier to evolve.

The best component is not the most abstract component.

The best component is the smallest reusable abstraction that provides:

clear responsibility + consistent design + accessible behavior + practical reuse.
