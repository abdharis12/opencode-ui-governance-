# FRONTEND DESIGN CREATIVE GOVERNANCE

## Purpose

This document defines the creative design principles used by the UI Governance Engine when creating or significantly redesigning frontend experiences.

The objective is to produce interfaces that are:

* distinctive
* intentional
* product-specific
* visually coherent
* memorable
* usable
* production-ready

The goal is to avoid generic AI-generated interfaces.

---

# 1. CREATIVE FREEDOM

The agent is encouraged to make strong visual decisions when the project configuration permits creative freedom.

Creative decisions may include:

* composition
* layout
* asymmetry
* typography scale
* spacing rhythm
* content emphasis
* visual storytelling
* product visualization
* illustration composition
* section transitions
* interaction choreography
* animation
* signature visual elements

Creative freedom must remain inside the project's configured visual system.

---

# 2. DESIGN SYSTEM BOUNDARY

Creativity does not authorize changing:

* primary visual language
* semantic color system
* typography system
* component foundation
* accessibility standards
* established interaction conventions

The principle is:

**Distinctive within the system.**

Not:

**Create a new system for every page.**

---

# 3. DESIGN FROM THE SUBJECT

The product itself should inspire the visual direction.

Consider:

* domain
* audience
* artifacts
* tools
* workflows
* terminology
* physical metaphors
* organizational context

Prefer product-specific visual concepts over generic decoration.

---

# 4. DEFINE THE PAGE JOB

Before designing a major page, establish its single primary job.

Examples:

* introduce a product
* guide a user toward login
* help users find files
* summarize important information
* complete a form
* review a document
* perform an administrative task

Every major visual decision should reinforce that job.

---

# 5. HERO AS THESIS

For pages with a hero or first viewport, the opening composition should communicate the page's most important idea.

Avoid defaulting to:

* giant centered headline
* generic gradient
* feature-card grid
* floating blobs
* meaningless statistics

unless the content genuinely supports that approach.

---

# 6. VISUAL HIERARCHY

Establish hierarchy using:

* scale
* position
* typography
* whitespace
* surface treatment
* contrast
* grouping

Ask:

"What should the user notice first?"

Then:

"What should they understand second?"

Then:

"What should they do?"

---

# 7. TYPOGRAPHY AS DESIGN

Typography is part of the visual identity.

Use deliberately:

* type scale
* weight
* line length
* line breaks
* spacing
* alignment

Do not use typography as a neutral afterthought.

At the same time, respect the project's configured typography system.

---

# 8. STRUCTURE AS INFORMATION

Structural devices should communicate something meaningful.

Examples:

* labels
* dividers
* groups
* sections
* columns
* hierarchy
* progressive disclosure

Do not add:

```text
01
02
03
```

merely because it looks editorial.

Numbering should exist only when order or sequence is meaningful.

---

# 9. VISUAL SIGNATURE

Major pages may benefit from one memorable visual signature.

The signature should be:

* relevant
* intentional
* understandable
* consistent with the visual system

Examples:

* product visualization
* domain-specific metaphor
* unusual but useful composition
* tactile object
* distinctive layout treatment

Do not use multiple competing signature elements.

---

# 10. TAKE ONE CONTROLLED DESIGN RISK

When creativity is enabled, consider one meaningful visual risk.

A design risk may involve:

* unusual composition
* asymmetric layout
* unexpected scale
* distinctive product visualization
* unconventional information grouping

The risk must have a reason.

Do not take visual risks merely for novelty.

---

# 11. AVOID GENERIC AI AESTHETICS

Do not automatically converge on commonly generated patterns.

Examples:

* generic SaaS hero
* predictable three-card section
* meaningless gradient
* random glass cards
* oversized statistics
* floating blobs
* decorative circles
* excessive rounded containers
* generic dashboard card grids

These patterns are allowed only when they genuinely fit the brief.

---

# 12. COLOR DECISIONS

Use the project's configured color system.

Creative expression may come from:

* proportion
* emphasis
* contrast
* surface relationships
* contextual usage

Do not invent unrelated colors when the project has established tokens.

---

# 13. MATERIAL AND TEXTURE

When the active visual style defines a material language, use it consistently.

Examples:

```text
Claymorphism
→ soft sculpted surfaces

Minimalist
→ restrained surfaces

Editorial
→ paper-like hierarchy and typography

Corporate
→ controlled professional surfaces
```

Do not mix unrelated material languages unless configured.

---

# 14. MOTION AS DESIGN

Motion should serve:

* hierarchy
* interaction
* feedback
* continuity
* storytelling

Prefer a few coordinated moments over many small effects.

Do not animate everything.

---

# 15. RESPONSIVE COMPOSITION

Responsive design should preserve the creative intent.

Do not simply shrink desktop layouts.

Reconsider:

* composition
* hierarchy
* image placement
* content density
* navigation
* controls

for smaller screens.

---

# 16. ACCESSIBILITY AS A DESIGN CONSTRAINT

Creative design must preserve:

* contrast
* focus
* keyboard navigation
* semantic HTML
* accessible names
* reduced motion
* responsive usability

Accessibility is part of design quality.

---

# 17. DESIGN EXPLORATION

For major UI tasks, explore multiple directions before implementation.

Recommended:

```text
Brief
↓
Subject analysis
↓
2–3 visual directions
↓
Compare
↓
Select strongest direction
↓
Implement
```

The selected direction should be evaluated against:

* product identity
* design system
* usability
* distinctiveness
* feasibility

---

# 18. SELF-CRITIQUE

After implementation, evaluate:

## Genericness

Does this look like something any AI could have generated?

## Specificity

Does this visually belong to this product?

## Style Fidelity

Does it follow the active visual style?

## Memorability

Is there a meaningful visual idea?

## Usability

Does creativity improve or harm comprehension?

## Restraint

Is any element unnecessary?

---

# 19. SECOND PASS

The first implementation is not automatically the final design.

After reviewing the result:

1. identify the weakest visual area
2. identify unnecessary decoration
3. identify inconsistent hierarchy
4. strengthen the signature element
5. simplify supporting elements
6. verify responsive behavior

Then refine.

---

# 20. IMPLEMENTATION CONSTRAINT

Creative design should still use the project's existing component architecture.

Prefer:

```text
Design Direction
↓
Design Tokens
↓
Foundation Components
↓
Shared Components
↓
Page Composition
```

Do not implement visual creativity by abandoning reusable components.

---

# 21. DESIGN SYSTEM EXTENSION

If a creative requirement cannot be achieved using the current system, determine whether it belongs as:

* a token
* a component variant
* a reusable component
* a page pattern

Prefer system-level improvements over repeated page-level hacks.

---

# 22. CONTENT AS DESIGN MATERIAL

Use real and specific content.

Prefer:

* clear terminology
* active voice
* meaningful labels
* concise descriptions

Do not use vague marketing language when the product needs functional clarity.

---

# 23. ANTI-PATTERNS

Avoid:

* design by trend
* style without purpose
* decorative complexity
* generic AI layouts
* excessive animation
* excessive gradients
* unnecessary 3D
* visual inconsistency
* arbitrary component creation

---

# 24. QUALITY BAR

The final UI should feel like it was designed intentionally for the product.

It should not feel like:

**a template with customized colors.**

---

# 25. FINAL PRINCIPLE

Be bold where it matters.

Be disciplined everywhere else.

Use creativity to create:

**recognizable product identity + meaningful visual expression + strong usability.**
