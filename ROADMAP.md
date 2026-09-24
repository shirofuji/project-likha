# Roadmap

## Purpose

Learn how code runs on the OS and on the silicon, and build the computer science and math fundamentals I skipped, by writing a game engine from scratch, system by system.

## Long-term ambition (owner: Dominick)

Build an engine in the spirit of Unreal Engine as it existed in 2026.

**Fixed reference point:** no matter what year we reach 3D rendering, lighting, physics, and animation, the benchmark stays Unreal Engine as of the end of 2026. We don't chase newer versions.

**Interpretation:** the goal is to implement working, simplified versions of the core systems Unreal had in 2026, from first principles, and to understand each one well enough to explain it. We aim for breadth of *techniques*, not feature parity, editor polish, or production scale. When we reach a phase that maps to an Unreal system, we'll write `reference/<system>.md` describing what Unreal 2026 did there and which parts we'll implement.

## Principles

1. **Write it yourself first.** No third-party libraries for a system until I've built a simpler version of it myself. After that, a library is allowed if it isn't the thing being learned.
2. **Talk to the OS directly.** Win32 and the graphics API, with no SDL, GLFW, or other wrappers.
3. **C-style C++.** Structs, functions, pointers, manual memory. Language features only when there's a concrete reason.
4. **Always playable.** Every milestone ends with something that runs and can be seen.
5. **Explain it or it isn't done.** Each milestone ends with a write-up in `notes/`, in my own words, no copying from sources. The test: could I explain it to someone who knows only what I've already covered?
6. **Exit criteria, not deadlines.**

## Setup

- Platform: Windows, x64
- Compiler: MSVC (`cl.exe`), built from the command line with `build.bat`
- Debugger: Visual Studio (RemedyBG optional)
- Repo is public so progress can be reviewed through the GitHub API

## Phases

### Phase 1 — Foundations (CPU only, 2D)
| # | Milestone | What it teaches |
|---|-----------|-----------------|
| M01 | Platform layer | What the OS provides: windows, messages, memory, time, input; compiling and linking |
| M02 | 2D software renderer | Memory layout, pixels as bytes, clipping, blending, frame-rate-independent motion |
| M03 | Memory management | Virtual memory, pages, arenas and allocators |
| M04 | Game loop and hot reloading | Fixed timestep, DLL loading, separating platform code from game code |
| M05 | Audio | Sampling, ring buffers, latency, talking to the sound device |
| M06 | Assets and file formats | Binary formats, endianness, parsing BMP/WAV/fonts by hand |
| M07 | Ship a small 2D game | Integration: a complete, playable game on the engine |

### Phase 2 — Performance and systems
Profiling and in-engine timing, CPU caches and data-oriented design, SIMD, threads and a job system, debug tools (console, overlays).

### Phase 3 — 3D on the CPU
Vectors, matrices, transforms, and cameras; a software 3D rasterizer (z-buffer, perspective-correct texturing). This is where the math study pays off directly.

### Phase 4 — The GPU
Modern graphics API (likely Direct3D 12, Unreal's main Windows backend; decision made at the start of the phase). Shaders, GPU memory, synchronization.

### Phase 5 — Modern rendering (Unreal 2026 reference)
Physically based materials, deferred rendering, shadows, post-processing, temporal anti-aliasing and upscaling, then simplified versions of dynamic global illumination (Lumen) and virtualized geometry (Nanite).

### Phase 6 — Physics (Unreal 2026 reference)
Collision detection, rigid bodies, constraints; later destruction and cloth.

### Phase 7 — Animation (Unreal 2026 reference)
Skeletal animation, blending, inverse kinematics.

### Phase 8 — World and tools (Unreal 2026 reference)
Scene format, world streaming, large-world coordinates, an editor, scripting.

Phases 2–8 get broken into milestones when we get close to them, not before.

## Check-in protocol

1. Start a chat and paste the repo link.
2. The mentor reads `ROADMAP.md`, the current milestone file, open issues, recent commits, and new notes.
3. Review: code feedback, questions testing the notes, and whether the exit criteria are met.
4. The mentor updates the milestone file and drafts next tasks. I commit the changes.

## Status

Current milestone: **M01 — Platform layer**
