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
