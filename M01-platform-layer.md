# M01 — Platform layer

**Goal:** a Win32 program, built from the command line, that opens a window and draws an animated pixel buffer I allocated myself, responds to the keyboard, and runs at a stable frame rate.

**Why:** everything else sits on top of this. This milestone is about what the OS actually gives a program, and what happens between double-clicking an .exe and a pixel changing color.

**Resources:** Handmade Hero, days 1–10 (approximately); Microsoft Learn Win32 docs for every API you call.

## Tasks (one GitHub issue each)

- [ ] **T1 — Toolchain.** Install Visual Studio Community with the "Desktop development with C++" workload. Write `build.bat` that calls `cl.exe` directly (with debug info and warnings on). Build a program that calls `MessageBoxA`, and step through it in the debugger.
- [ ] **T2 — A window.** `WinMain`, register a window class, create the window, run a message loop (`PeekMessage`, not `GetMessage`), and handle closing the window cleanly in the window procedure.
- [ ] **T3 — Backbuffer.** Allocate a pixel buffer with `VirtualAlloc`, describe it with `BITMAPINFO`, and display it with `StretchDIBits`. Fill it with a gradient that scrolls every frame.
- [ ] **T4 — Resizing.** Handle window resizing without leaking memory or crashing.
- [ ] **T5 — Keyboard input.** Handle key down/up messages. Arrow keys change the gradient's scroll direction and speed.
- [ ] **T6 — Frame timing.** Measure frame time with `QueryPerformanceCounter`/`QueryPerformanceFrequency`, print ms/frame with `OutputDebugStringA`, and hold a steady 60 fps (look into `timeBeginPeriod` and `Sleep`).
- [ ] **T7 (stretch) — Look underneath.** Open the disassembly of the gradient loop in the debugger. Identify the loop, the loads and stores, and the jump back.
- [ ] **T8 — Notes.** Write `notes/M01-platform-layer.md` (see below).

## Notes must answer (in your own words)

1. What do `cl.exe` and the linker each do? What are `.obj`, `.pdb`, and `.exe`?
2. What happens from double-clicking the .exe to the first frame appearing?
3. Why does Windows use a message loop? What would go wrong if you stopped pumping messages?
4. What does `VirtualAlloc` do, and how is it different from `malloc`?
5. How is one pixel laid out in memory, and why is the byte order what it is?

## Exit criteria

- Builds with `build.bat` from a clean checkout
- Window shows a scrolling gradient at a stable frame rate, arrow keys control it, resize and close work without crashing
- Notes answer all five questions, and survive follow-up questions at check-in
