---

name: ui-governance
description: Universal UI/UX governance system that reads a project's ui-system.yaml and applies its visual style, design tokens, component rules, UX principles, creativity level, and UI quality standards.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# UI GOVERNANCE

You are working under a project-specific UI/UX governance system.

The project configuration is defined by:

`ui-system.yaml`

This file determines the active visual identity for the current project.

---

# 1. CONFIGURATION FIRST

Before performing UI/UX work:

1. Find `ui-system.yaml`.
2. Read it.
3. Identify the active visual style.
4. Identify the secondary visual style.
5. Read the configured color system.
6. Read typography settings.
7. Read layout settings.
8. Read component foundation.
9. Read creativity rules.
10. Read reference pages when configured.

Do not assume the visual style.

---

# 2. ACTIVE VISUAL STYLE

The active visual style is controlled by:

`visual.style`

Examples:

* claymorphism
* minimalist
* editorial
* corporate
* glassmorphism
* brutalist
* custom

The selected style must determine the visual direction of the implementation.

---

# 3. STYLE REFERENCES

Style-specific guidance is located in:

`references/`

Load the reference corresponding to the active style.

Examples:

```text
visual.style = claymorphism
→ references/claymorphism.md

visual.style = minimalist
→ references/minimalist.md
```

Do not apply multiple primary visual styles unless configured by the project.

---

# 4. SECONDARY STYLE

The optional secondary style is controlled by:

`visual.secondary_style`

Examples:

```text
glassmorphism
none
```

The secondary style must never override the primary style.

Example:

```text
Primary:
Claymorphism

Secondary:
Glassmorphism

Result:
Clay surfaces + selective glass layers
```

---

# 5. DESIGN TOKENS

Read the theme configuration from:

`ui-system.yaml`

Use the configured:

* colors
* typography
* spacing
* radius
* elevation
* borders
* shadows
* motion

Do not invent replacement values when tokens exist.

---

# 6. CREATIVE FREEDOM

Creativity is controlled by:

`creative`

The project may allow strong creative decisions.

Creative decisions may include:

* layout
* composition
* asymmetry
* visual hierarchy
* visual metaphor
* spacing rhythm
* typography scale
* section composition
* animation
* signature visual elements

Creative decisions must remain inside the configured visual system.

Consistency does not mean identical layouts.

Consistency means recognizable product identity.

---

# 7. PRODUCT-SPECIFIC DESIGN

Design according to the project's actual subject matter.

Use the project's:

* product
* audience
* domain
* terminology
* visual references
* content

Do not insert generic visual patterns merely because they are common.

---

# 8. COMPONENT FOUNDATION

Read:

`components.foundation`

Use the project's configured component foundation.

For example:

* shadcn
* radix
* native
* custom

When shadcn/ui is configured, prefer existing shadcn components.

When Radix is configured, preserve Radix behavior and accessibility.

---

# 9. EXISTING COMPONENTS FIRST

Before creating a component:

1. Search the codebase.
2. Search existing shared components.
3. Search the project's component registry if provided.
4. Determine whether the requirement can be satisfied by an existing component.
5. Reuse or extend where appropriate.

Avoid duplicate components.

---

# 10. PAGE PATTERNS

Before implementing a page:

1. Identify the page type.
2. Find the closest existing page.
3. Inspect its structure.
4. Inspect its component composition.
5. Inspect its responsive behavior.
6. Reuse the pattern where appropriate.

Do not make every new page a blank canvas.

---

# 11. REFERENCE PAGES

Reference pages represent existing product conventions.

Use them as evidence of:

* visual identity
* spacing rhythm
* hierarchy
* interaction patterns
* component usage

Do not blindly copy their business logic.

---

# 12. DESIGN DRIFT

Look for:

* arbitrary colors
* arbitrary spacing
* arbitrary radius
* arbitrary shadows
* inconsistent typography
* duplicate components
* inconsistent interactions
* unrelated visual styles

Correct drift where appropriate.

---

# 13. ACCESSIBILITY

Always preserve:

* semantic HTML
* keyboard navigation
* visible focus
* accessible labels
* ARIA
* contrast
* reduced motion
* responsive usability

Visual design must never override accessibility.

---

# 14. RESPONSIVE DESIGN

All UI work must consider:

* mobile
* tablet
* desktop

Use existing project breakpoint conventions.

Do not create unrelated responsive systems.

---

# 15. MAJOR UI WORKFLOW

For major UI such as:

* landing pages
* dashboards
* file managers
* login pages
* complex detail pages

use:

```text
Understand
→ Inspect
→ Explore
→ Brainstorm
→ Select Direction
→ Implement
→ Self-Critique
→ Audit
→ Refine
```

For small UI work use:

```text
Inspect
→ Reuse
→ Implement
→ Audit
```

---

# 16. SELF-CRITIQUE

Before completing major UI work, evaluate:

### Genericness

Does this look like a generic AI-generated interface?

### Product Identity

Does the visual language clearly belong to this product?

### Style Fidelity

Does it genuinely match the configured visual style?

### Consistency

Does it feel related to the existing application?

### Usability

Is visual creativity helping the user?

### Restraint

Can unnecessary decoration be removed?

---

# 17. UI AUDIT

For significant UI changes:

1. Run the available UI audit process.
2. Review Design System compliance.
3. Review component reuse.
4. Review responsive behavior.
5. Review accessibility.
6. Review visual drift.
7. Fix significant findings.

---

# 18. IMPORTANT PRINCIPLE

The project configuration defines the visual boundaries.

Within those boundaries, the agent is encouraged to make distinctive and intentional design decisions.

The goal is:

**Distinctive within the system.**

Not:

**Identical across every page.**

---

# 19. COMPLETION

Do not consider a UI task complete merely because it renders.

A completed UI must satisfy:

* functionality
* configured design system
* component reuse
* responsive behavior
* accessibility
* visual consistency
* appropriate creativity
* relevant verification
