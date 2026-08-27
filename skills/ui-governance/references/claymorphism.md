# CLAYMORPHISM VISUAL GOVERNANCE

## Purpose

Claymorphism is a soft, tactile, volumetric visual language.

The interface should feel like digitally sculpted objects made from soft clay or rubber, illuminated by broad and diffuse light.

Claymorphism is a visual system, not simply a combination of large border radius and drop shadows.

---

# 1. CORE VISUAL CHARACTER

Primary characteristics:

- soft 3D
- sculpted
- rounded
- inflated
- volumetric
- tactile
- matte
- smooth
- soft depth
- diffuse lighting
- subtle highlights
- soft shadows
- physical interaction cues

The intended impression is:

**softly molded digital objects with controlled physical depth.**

---

# 2. GEOMETRY

Claymorphic geometry should feel soft and rounded.

Prefer:

- generous corner radii
- smooth curves
- rounded controls
- softly inflated surfaces
- pill-shaped elements where semantically appropriate
- visually continuous contours

Avoid:

- sharp corners
- razor edges
- aggressive angular shapes
- unnecessarily thin surfaces
- rigid geometry that conflicts with the style

Geometry should communicate softness without making the interface childish.

---

# 3. MATERIAL

Clay surfaces should visually resemble:

- matte clay
- soft rubber
- molded material
- smooth sculpted surfaces

Prefer:

- matte appearance
- low-gloss surfaces
- smooth tonal transitions
- subtle tactile depth

Avoid:

- chrome
- metallic appearance
- glossy plastic
- mirror reflections
- highly polished surfaces
- strong specular highlights

---

# 4. LIGHTING

Preferred lighting direction:

**broad front-top diffuse lighting**

Lighting should feel:

- soft
- broad
- even
- low contrast
- ambient

Avoid:

- hard directional light
- harsh shadows
- dramatic high contrast
- narrow spotlight effects

The lighting should reinforce the material without becoming the visual subject.

---

# 5. SURFACE HIERARCHY

Claymorphism requires a clear elevation hierarchy.

Recommended conceptual levels:

## Level 0 — Background

The page background.

Minimal depth.

---

## Level 1 — Surface

Standard cards, panels, sections, and containers.

Soft raised appearance.

---

## Level 2 — Elevated

Dialogs, popovers, floating panels, important controls, or highlighted surfaces.

More visible depth.

---

## Level 3 — Floating

Special floating or high-priority objects.

Use sparingly.

---

## Pressed

Interactive surfaces in an active or pressed state.

Use inward depth rather than simply reducing opacity.

---

# 6. SHADOW SYSTEM

Claymorphic shadows should communicate volume.

Prefer:

- soft shadows
- diffuse shadows
- low-contrast shadows
- layered shadows when appropriate
- complementary highlight/shadow relationships

Avoid:

- pure black hard shadows
- sharp offset shadows
- excessive shadow blur
- extreme contrast
- unrealistic depth

Shadows should support hierarchy, not dominate it.

---

# 7. HIGHLIGHT SYSTEM

Highlights create the impression of a softly illuminated surface.

Prefer:

- broad highlights
- subtle highlights
- low-contrast highlights
- soft directional illumination

Avoid:

- sharp white reflections
- glossy streaks
- mirror-like highlights
- high-contrast shine

Highlights must never reduce text readability.

---

# 8. DEPTH MODEL

Depth should generally combine:

- surface color
- soft outer shadow
- subtle highlight
- optional inner shadow
- contextual elevation

Do not rely on a single large drop shadow to create the entire Clay effect.

---

# 9. INNER DEPTH

Use inset or inner shadows when an element should appear recessed.

Appropriate examples:

- text inputs
- pressed controls
- wells
- recessed panels
- active controls

The inset effect should remain subtle.

Avoid deep inner shadows that make controls appear physically damaged or overly sculpted.

---

# 10. INTERACTION STATES

Claymorphic controls should communicate physical response.

## Default

Soft raised surface.

## Hover

Subtle increase in illumination, elevation, or tactile response.

## Focus

Clear and accessible focus treatment.

## Active / Pressed

Subtle compression or inset depth.

## Disabled

Reduced emphasis without becoming visually ambiguous.

## Selected

Clearly distinguish the selected state using the project's semantic state system.

---

# 11. BUTTONS

Buttons should feel tactile and rounded.

Preferred:

- soft raised surface
- clear action hierarchy
- subtle depth
- tactile pressed state

Primary buttons may have stronger elevation than secondary actions.

Avoid making every button equally visually prominent.

---

# 12. CARDS

Cards should feel like softly molded surfaces.

Prefer:

- large but controlled radius
- matte surface
- soft elevation
- subtle highlight
- diffuse shadow

Avoid:

- excessive card nesting
- unnecessarily deep shadows
- overly inflated containers
- decorative cards without information purpose

---

# 13. INPUTS

Inputs may use a slightly recessed treatment.

Possible characteristics:

- softly inset surface
- subtle inner shadow
- soft highlight
- clear border or focus ring

Focus state must remain obvious and accessible.

---

# 14. DIALOGS AND FLOATING SURFACES

Dialogs and floating surfaces can use stronger elevation.

Use:

- soft surface
- larger radius where appropriate
- controlled depth
- clear visual separation

If a secondary glass style is configured, glass may be used for selected floating layers.

Clay remains the primary material.

---

# 15. CLAY + GLASS RELATIONSHIP

When a project enables a secondary Glassmorphism style:

Claymorphism remains primary.

Preferred hierarchy:

```text
Clay background/surface
        ↓
Clay component
        ↓
Optional floating glass layer
```

Glass should be used to communicate:

floating context
overlay
secondary information
transient UI

Do not convert the entire interface into transparent glass panels.

# 16. COLOR

Claymorphism does not define a specific color palette.

Use the project's configured semantic colors.

Pastel palettes are compatible with Claymorphism when configured, but they are not mandatory.

Color should reinforce material hierarchy rather than replace it.

# 17. TYPOGRAPHY

Typography remains controlled by the project's typography system.

Claymorphism does not justify:

decorative fonts
excessive text effects
arbitrary font weights
unusual type scaling

Visual personality should primarily come from:

surface treatment
hierarchy
composition
depth
spacing

# 18. SPACING

Claymorphism benefits from comfortable spacing.

Prefer:

clear separation between surfaces
sufficient breathing room
consistent component padding
deliberate grouping

Avoid:

cramped controls
excessive surface nesting
unnecessary whitespace that weakens information hierarchy

# 19. COMPONENT DENSITY

Not every element needs strong Clay treatment.

Recommended hierarchy:

Strong Clay

Use for:

primary cards
primary actions
important widgets
major product objects
Medium Clay

Use for:

standard cards
controls
forms
panels
Subtle Clay

Use for:

small controls
badges
secondary navigation
utility elements

This prevents the interface from becoming visually noisy.

# 20. VISUAL BOUNDARIES

A Claymorphic interface should not become:

childish
toy-like
cartoonish
overly inflated
excessively playful

Softness should coexist with professional hierarchy.

# 21. MOTION

Motion should reinforce tactile interaction.

Prefer:

subtle elevation changes
soft press feedback
restrained entrance transitions
gentle surface movement

Avoid:

excessive bouncing
continuous floating
dramatic spring effects
animation for decoration alone

Respect reduced-motion preferences.

# 22. RESPONSIVE BEHAVIOR

Claymorphism must remain usable across:

mobile
tablet
desktop

On smaller screens:

simplify unnecessary decorative depth
reduce visual clutter
maintain tactile controls
preserve hierarchy

Do not allow shadows, blur, or floating effects to compromise usability.

# 23. ACCESSIBILITY

Claymorphism must never compromise:

contrast
focus visibility
keyboard navigation
readable typography
semantic structure
accessible states

A visual effect is invalid if it makes the interface harder to use.

# 24. ANTI-PATTERNS

Avoid:

rounded rectangles + shadow only
hard black shadows
extreme 3D
glossy plastic
excessive highlights
excessive gradients
excessive surface nesting
identical elevation on every component
excessive blur
decorative depth with no purpose
visual effects that obscure content

# 25. QUALITY TEST

A successful Claymorphic interface should immediately communicate:

soft + tactile + sculpted + volumetric + matte

If the interface still looks like a standard flat UI with rounded corners and shadows, the Claymorphism treatment is insufficient.

# 26. DESIGN PRINCIPLE

Use Claymorphism to make the interface feel:

physically tangible without becoming physically distracting.

The material should support the product, hierarchy, and interaction—not replace them.
