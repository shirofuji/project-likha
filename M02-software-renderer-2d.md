# M02 — 2D software renderer

**Goal:** draw shapes and a transparent sprite into the backbuffer entirely on the CPU, with a player-controlled sprite that moves at the same speed regardless of frame rate.

**Why:** a renderer is just code that writes bytes into memory in a particular pattern. Doing it by hand teaches memory layout, bounds safety, and the arithmetic every later renderer, including the GPU ones, is built on.

## Tasks (one GitHub issue each)

- [ ] **T1 — Drawing API.** Separate drawing code from Win32 code: drawing functions take a buffer struct (memory, width, height, pitch) and know nothing about Windows.
- [ ] **T2 — Rectangles with clipping.** Filled rectangles that can be partly or fully off-screen without writing outside the buffer.
- [ ] **T3 — Lines.** Implement Bresenham's line algorithm using only integer math. Work out why it works on paper before coding it.
- [ ] **T4 — Load a BMP by hand.** Read the file, parse the headers yourself using structs, and draw the image. No image libraries.
- [ ] **T5 — Alpha blending.** Blend a sprite with transparency over the background using linear interpolation.
- [ ] **T6 — Player movement.** Keyboard-controlled sprite with position and velocity scaled by frame time, so speed doesn't depend on frame rate. Test it by forcing 30 fps and 120 fps.
- [ ] **T7 — Measure.** Time each drawing function per frame. Make rectangle fill measurably faster, and explain why the change helped.
- [ ] **T8 — Notes.** Write `notes/M02-software-renderer-2d.md` (see below).

## Notes must answer (in your own words)

1. What is pitch (stride), and why can it differ from width × bytes per pixel?
2. What actually happens if you write past the end of the buffer?
3. Why does Bresenham's algorithm work without floating point?
4. What is linear interpolation, and why is it the right tool for alpha blending?
5. Why does multiplying velocity by frame time make movement frame-rate independent?

## Exit criteria

- Background image, shapes, and a transparent player sprite on screen
- Sprite moves at the same speed at 30 and 120 fps
- Nothing crashes when anything is drawn partly or fully off-screen
- Notes answer all five questions, and survive follow-up questions at check-in
