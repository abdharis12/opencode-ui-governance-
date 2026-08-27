# ACCESSIBILITY GOVERNANCE

## Purpose

Accessibility is a core part of UI/UX quality.

Every interface must remain usable, understandable, and operable across different devices, interaction methods, and user capabilities.

Visual style must never reduce accessibility.

---

# 1. SEMANTIC HTML

Use semantic HTML whenever possible.

Prefer:

* `header`
* `nav`
* `main`
* `section`
* `article`
* `aside`
* `footer`
* `button`
* `form`
* `label`

Avoid using generic `div` or `span` elements for interactive or structural purposes when a semantic element is appropriate.

---

# 2. KEYBOARD NAVIGATION

All interactive functionality must be usable with a keyboard.

Check:

* Tab navigation
* Shift+Tab
* Enter
* Space
* Escape
* Arrow keys where appropriate

Users must not become trapped in an interaction.

---

# 3. FOCUS MANAGEMENT

Every interactive element must have a visible focus state.

Never remove focus indicators solely for visual aesthetics.

Dialogs, popovers, menus, and other overlays must preserve appropriate focus management.

When using Radix UI, preserve its focus-management behavior.

---

# 4. FOCUS VISIBILITY

Focus indicators must:

* be clearly visible
* provide sufficient contrast
* remain visible against the active surface
* not depend solely on subtle color changes

Do not replace an accessible focus state with an effect that is difficult to see.

---

# 5. LABELS

Inputs and controls must have accessible names.

Prefer explicit labels.

Example:

```html
<label for="email">Email</label>
<input id="email" />
```

Icon-only buttons must provide an accessible name.

Example:

```html
<button aria-label="Search">
```

Do not rely only on placeholder text as the label.

---

# 6. ARIA

Use ARIA when necessary.

Do not add ARIA attributes simply for decoration.

Prefer semantic HTML first.

When using Radix UI, do not remove or override its accessibility behavior without a strong reason.

---

# 7. COLOR CONTRAST

Important text and controls must remain readable.

Do not use:

* extremely low contrast
* text over visually noisy backgrounds
* translucent surfaces that reduce readability
* Clay highlights that interfere with text

Visual effects must never make important content difficult to distinguish.

---

# 8. CLAYMORPHISM ACCESSIBILITY

When using Claymorphism:

Do not allow:

* shadows to obscure focus states
* highlights to reduce contrast
* excessive depth to make controls difficult to identify
* similar surfaces to become visually indistinguishable
* pressed states to become ambiguous

Claymorphism must remain visually expressive while preserving usability.

---

# 9. GLASSMORPHISM ACCESSIBILITY

When using Glassmorphism:

* maintain readable text contrast
* avoid overly transparent backgrounds
* avoid excessive blur behind important text
* provide sufficient separation from the background
* maintain visible boundaries for interactive controls

Do not rely on transparency alone to communicate structure.

---

# 10. MOTION

Respect:

`prefers-reduced-motion`

Animations must not be required to:

* understand content
* access functionality
* determine state
* complete an important workflow

Avoid excessive:

* bouncing
* parallax
* continuous movement
* flashing
* rapid transitions

Motion should be purposeful.

---

# 11. TOUCH TARGETS

Interactive controls must be practical on touch devices.

Avoid tiny:

* buttons
* icon buttons
* links
* menu items
* form controls

Provide sufficient spacing between adjacent interactive targets.

---

# 12. FORMS

Forms must provide:

* visible labels
* clear instructions
* validation feedback
* meaningful error messages
* visible required state where applicable
* keyboard usability

Do not rely solely on color to indicate validation status.

---

# 13. ERROR MESSAGES

Error messages should explain:

1. What went wrong.
2. Which field or action is affected.
3. What the user can do next.

Avoid vague messages such as:

"Something went wrong."

when more useful information is available.

---

# 14. SUCCESS FEEDBACK

Successful actions should provide clear feedback when appropriate.

The feedback should be:

* understandable
* noticeable
* concise
* accessible

Do not rely solely on color or animation.

---

# 15. DIALOGS AND MODALS

Dialogs must:

* have an accessible name
* manage focus correctly
* support keyboard interaction
* support Escape where appropriate
* return focus appropriately when closed

Use the project's Radix/shadcn dialog implementation where available.

Do not create custom modal behavior unnecessarily.

---

# 16. MENUS AND DROPDOWNS

Menus must:

* support keyboard interaction
* preserve focus behavior
* have meaningful labels
* remain usable on mobile

Use Radix/shadcn primitives where available.

---

# 17. TABLES

Tables should preserve meaningful structure.

Use:

* proper table semantics
* meaningful headers
* accessible action labels

Do not sacrifice data structure for decorative visual treatment.

---

# 18. ICONS

Icons should support meaning rather than replace necessary text.

Decorative icons should not create unnecessary screen-reader noise.

Icon-only controls require accessible labels.

---

# 19. IMAGES

Meaningful images require meaningful alternative text.

Decorative images should use appropriate empty alt text where applicable.

Do not use alt text as an opportunity for marketing copy.

---

# 20. RESPONSIVE ACCESSIBILITY

Accessibility must be preserved across:

* mobile
* tablet
* desktop

Responsive layouts must not:

* hide critical actions
* create inaccessible overflow
* make text unreadable
* cause controls to overlap
* create unusable dialogs

---

# 21. DARK MODE

When dark mode is supported:

Verify:

* text contrast
* borders
* focus indicators
* icons
* disabled states
* Clay surfaces
* Glass surfaces

Do not assume that a light-mode token will automatically remain accessible in dark mode.

---

# 22. DISABLED STATES

Disabled controls must be visually distinguishable without relying exclusively on opacity.

The interface should communicate:

* that the control is disabled
* why it may be unavailable when appropriate

Do not make disabled controls look interactive.

---

# 23. LOADING STATES

Loading states should communicate progress without causing unnecessary visual motion.

Use existing:

* Skeleton
* Spinner
* LoadingState

components when available.

Do not invent a new loading pattern for each page.

---

# 24. SCREEN READERS

Important information must remain understandable without relying exclusively on:

* color
* position
* animation
* visual depth
* icons

When a visual distinction conveys important information, provide an equivalent accessible representation.

---

# 25. ACCESSIBLE INTERACTION

Every important user action must have an accessible path.

Do not make functionality available only through:

* hover
* drag
* animation
* mouse-only interactions

Provide keyboard and appropriate touch alternatives.

---

# 26. AUTOMATION

Where project tooling supports accessibility testing, use it as part of UI verification.

Useful checks may include:

* automated accessibility tests
* linting
* component tests
* browser-based checks
* keyboard verification

Do not claim accessibility verification unless it was actually performed.

---

# 27. FINAL ACCESSIBILITY CHECK

Before completing a significant UI task, verify:

* [ ] semantic structure
* [ ] keyboard navigation
* [ ] visible focus
* [ ] accessible labels
* [ ] ARIA where necessary
* [ ] sufficient contrast
* [ ] form validation
* [ ] error messaging
* [ ] dialog focus management
* [ ] menu keyboard behavior
* [ ] touch usability
* [ ] reduced motion
* [ ] responsive behavior
* [ ] screen-reader relevant information

---

# FINAL PRINCIPLE

Accessibility is part of the Design System.

It is not a final cosmetic check.

A visually distinctive interface is successful only when users can actually use it.

