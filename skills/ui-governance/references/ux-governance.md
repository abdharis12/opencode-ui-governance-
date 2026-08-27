# UX GOVERNANCE

## Purpose

This document defines universal UX principles for applications using the UI Governance Engine.

The goal is to make interfaces understandable, predictable, efficient, accessible, and consistent without preventing distinctive visual expression.

---

# 1. USER FIRST

Design from the user's perspective.

Start with:

* user goal
* context
* task
* information needed
* expected action

Do not design around technical implementation details.

---

# 2. CLARITY

At every meaningful state, users should be able to understand:

1. Where am I?
2. What am I looking at?
3. What can I do?
4. What will happen?
5. What happened?

Visual design should support these questions.

---

# 3. INFORMATION HIERARCHY

Every page should have a clear hierarchy:

```text
Primary Information
        ↓
Secondary Information
        ↓
Supporting Information
        ↓
Actions
```

Do not give every element equal visual importance.

---

# 4. SINGLE PRIMARY ACTION

When a page has a primary objective, make the primary action obvious.

Avoid multiple competing primary actions unless the workflow genuinely requires them.

Primary actions should use the project's established primary action treatment.

---

# 5. ACTION LANGUAGE

Use clear, specific action labels.

Prefer:

* Save
* Create
* Upload
* Download
* Delete
* Rename
* Search
* Open
* Continue

Avoid vague labels such as:

* Go
* Submit
* Proceed
* Process

when a more precise action name exists.

---

# 6. TERMINOLOGY CONSISTENCY

Use the same term for the same concept throughout the product.

For example, do not alternate between:

```text
Delete
Remove
Erase
```

unless they represent different operations.

Terminology is part of the product's UX system.

---

# 7. DISCOVERABILITY

Important actions should be discoverable without requiring users to guess.

Do not hide important actions behind:

* unexplained icons
* hover-only interactions
* unnecessary menus
* decorative controls

Secondary actions may use contextual menus when appropriate.

---

# 8. PROGRESSIVE DISCLOSURE

Show information when users need it.

Do not expose every possible option at once.

Use:

* menus
* dialogs
* expandable sections
* tabs
* contextual actions

when they genuinely improve comprehension.

---

# 9. FEEDBACK

Meaningful user actions should receive appropriate feedback.

Possible feedback:

* success
* error
* warning
* loading
* progress
* state change

Feedback should explain what happened.

---

# 10. SUCCESS STATES

Successful actions should clearly communicate completion when confirmation is useful.

Use consistent language.

If the action is:

```text
Save
```

then successful feedback should use:

```text
Saved
```

or a similarly consistent form.

Do not change terminology between the action and its feedback.

---

# 11. ERROR STATES

Errors should communicate:

1. What happened.
2. Where it happened.
3. What the user can do next.

Prefer:

```text
File upload failed. Check the file size and try again.
```

over:

```text
Something went wrong.
```

when useful information is available.

---

# 12. EMPTY STATES

An empty state should answer:

1. What is empty?
2. Why might it be empty?
3. What can the user do?

An empty state should guide the next useful action.

Avoid decorative empty states that provide no direction.

---

# 13. LOADING STATES

Loading states should communicate that work is in progress.

Choose the simplest suitable pattern:

* skeleton
* spinner
* progress
* disabled action
* optimistic state

Do not display unnecessary loading animation when the operation is effectively instantaneous.

---

# 14. FORMS

Forms should:

* group related information
* use clear labels
* preserve context
* provide useful helper text
* display validation near the relevant field
* maintain entered values when appropriate
* clearly communicate submission state

---

# 15. VALIDATION

Validate at the appropriate level.

Client-side validation may improve feedback, but server-side validation remains authoritative.

Errors should be:

* specific
* actionable
* associated with the affected field where appropriate

---

# 16. DESTRUCTIVE ACTIONS

Destructive operations should be distinguishable from normal actions.

For consequential actions:

* communicate the consequence
* request confirmation where appropriate
* make the destructive action explicit

Do not use confirmation dialogs for trivial reversible actions merely by default.

---

# 17. NAVIGATION

Navigation should communicate:

* current location
* available destinations
* hierarchy
* context

Use consistent terminology and interaction patterns.

Do not change navigation behavior between pages without a clear reason.

---

# 18. SEARCH

Search interfaces should make it clear:

* what is being searched
* where the search applies
* how results are presented
* how search can be cleared or changed

Do not use search purely as a decorative field.

---

# 19. FILTERING

Filters should communicate:

* available criteria
* active filters
* how to remove filters
* resulting state

Active filters should remain visible enough for users to understand why results are limited.

---

# 20. TABLES AND DATA

Data-heavy interfaces should prioritize:

* scanability
* alignment
* sorting
* filtering
* pagination
* action clarity

Avoid visual decoration that reduces data readability.

---

# 21. DENSITY

Density should reflect the task.

Administrative applications may require higher density than marketing pages.

Do not force all applications into the same density level.

Use the project's configured density.

---

# 22. RESPONSIVE UX

Responsive design is not only about fitting content.

Ensure that essential actions and information remain accessible.

On mobile:

* prioritize primary actions
* simplify secondary actions
* maintain readable content
* preserve navigation context
* avoid horizontal overflow where possible

---

# 23. MOBILE INTERACTION

Touch interfaces should provide:

* comfortable target sizes
* adequate spacing
* understandable gestures
* accessible contextual actions

Do not rely solely on hover behavior.

---

# 24. ACCESSIBILITY

UX must remain accessible through:

* keyboard
* screen reader-compatible structure
* visible focus
* readable contrast
* semantic controls
* reduced motion

Accessibility is part of usability.

---

# 25. FEEDBACK TIMING

Feedback should occur at an appropriate time.

Immediate:

* button interaction
* validation
* selection

After operation:

* save
* upload
* delete
* synchronization

Persistent:

* important warnings
* unresolved errors

Do not overwhelm users with notifications.

---

# 26. NOTIFICATIONS

Notifications should be:

* useful
* concise
* contextual
* dismissible when appropriate

Avoid excessive toast notifications for routine actions.

---

# 27. CONFIRMATION

Ask for confirmation when an action is:

* destructive
* difficult to reverse
* consequential

Do not ask for confirmation for every action.

Excessive confirmation creates friction.

---

# 28. CONSISTENCY

UX consistency should exist in:

* terminology
* controls
* navigation
* feedback
* interaction patterns
* state behavior

Visual layouts may vary when the page purpose requires it.

---

# 29. LEARNING COST

Users should be able to transfer knowledge from one page to another.

For example:

If a user learns how filtering works on one page, another page should behave similarly unless there is a meaningful reason not to.

---

# 30. ERROR PREVENTION

Good UX prevents errors before they happen.

Use:

* sensible defaults
* constrained inputs
* clear labels
* previews
* meaningful warnings
* confirmation for consequential actions

Avoid relying entirely on error messages after invalid actions.

---

# 31. RECOVERY

When an error occurs, provide a useful recovery path when possible.

Examples:

* Retry
* Undo
* Edit
* Restore
* Return
* Reconnect

An error without a recovery path should be avoided when the system can provide one.

---

# 32. STATE PRESERVATION

Where appropriate, preserve useful user context after navigation or failed actions.

Examples:

* entered form data
* selected filters
* current folder
* current tab
* search query

Do not reset user context unnecessarily.

---

# 33. EMPTY VS ERROR

Do not confuse:

```text
No data exists
```

with:

```text
Data could not be loaded
```

An empty state and an error state have different meanings and should have different UX.

---

# 34. PERMISSION STATES

When a user cannot access something:

Clearly communicate that access is unavailable when appropriate.

Do not reveal sensitive information about restricted resources.

Use the project's established authorization and permission patterns.

---

# 35. INTERACTION PREDICTABILITY

Controls should behave consistently with their appearance.

Do not make:

* buttons behave like links
* links behave like buttons
* icons behave differently in different contexts

unless there is a strong semantic reason.

---

# 36. VISUAL STYLE VS UX

Visual creativity must never obscure:

* hierarchy
* action
* state
* navigation
* content

A beautiful interaction that users cannot understand is not good UX.

---

# 37. MAJOR PAGE REVIEW

For significant pages, review:

### Goal

Is the page's purpose obvious?

### Hierarchy

Is important information emphasized?

### Actions

Can users identify what to do?

### Feedback

Do users understand the result of their actions?

### Recovery

Can users recover from errors?

### Consistency

Can knowledge from other pages transfer here?

### Accessibility

Can the interaction be used by different users and devices?

---

# 38. UX ANTI-PATTERNS

Avoid:

* ambiguous controls
* hidden primary actions
* inconsistent terminology
* unnecessary confirmation
* unexplained icons
* hover-only functionality
* vague errors
* decorative empty states
* excessive notifications
* unnecessary loading indicators
* inconsistent navigation

---

# 39. QUALITY TEST

Ask:

**Can a user understand what to do without having to learn the interface from scratch?**

If not, improve hierarchy, labels, feedback, or interaction patterns.

---

# 40. FINAL PRINCIPLE

Good UX should make the correct action:

**clear, predictable, efficient, accessible, and recoverable.**

Visual design should strengthen that experience, not compete with it.
