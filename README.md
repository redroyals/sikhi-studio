<div align="center">
<table width="100%">
  <tr>
    <td align="left" width="120">
      <img src="https://cdn.jsdelivr.net/gh/redroyals/sikhi-studio@main/assets/logo-dark.png" alt="Sikhi Studio" width="100" />
    </td>
    <td align="right">
      <h1>Sikhi Studio</h1>
      <h3 style="margin-top: -10px;">The truly free, and open-source cross-platform CapCut replacement.</h3>
    </td>
  </tr>
</table>

<p align="center">
  <a href="https://github.com/redroyals/sikhi-studio/releases"><img src="https://img.shields.io/github/downloads/redroyals/sikhi-studio/total?style=flat&logo=github&logoColor=F8F8F8&label=Downloads&labelColor=000000&color=c6f432" alt="Total Downloads" /></a>
  <a href="https://github.com/redroyals/sikhi-studio/actions/workflows/ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/redroyals/sikhi-studio/ci.yml?style=flat&logo=githubactions&logoColor=F8F8F8&label=Build&labelColor=000000" alt="Build Status" /></a>
  <a href="https://github.com/redroyals/sikhi-studio/releases"><img src="https://img.shields.io/badge/Version-0.2.2-c6f432?style=flat&logo=semver&logoColor=F8F8F8&labelColor=000000" alt="Sikhi Studio Version 0.2.2" /></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-AGPL%20v3-c6f432?style=flat&logo=gnu&logoColor=F8F8F8&labelColor=000000" alt="License: AGPL-3.0-or-later" /></a>
</p>

<img src="https://cdn.jsdelivr.net/gh/redroyals/sikhi-studio@main/assets/editor.png" alt="Sikhi Studio editor" width="100%" />

</div>

---

> Sikhi Studio is a rebranded fork of **[Concat](https://github.com/jub0t/Concat)**
> by Jareer ([@jub0t](https://github.com/jub0t)) — see [NOTICE.md](NOTICE.md)
> for what changed. All engine and editing credit belongs upstream; this fork
> exists to ship it under sikhi.io's own name and icon.

Sikhi Studio is everything you use CapCut for. No watermarks. No paywalls. No subscriptions.

It runs entirely on your machine, powered by a native Rust engine. Install it and start cutting. No account, no setup.

## Highlights

- 🚫 **No watermarks.** No account. No paywall.
- 🔒 **100% local.** Nothing leaves your machine.
- 🎬 **Multi-track editing.** Several timelines per project.
- ✂️ **Cut fast.** Split, trim, merge, transitions, speed control.
- 💬 **Auto-captions.** Runs on your machine, offline.
- 🗣️ **Text-to-Speech.** Free, local voices.
- 🎙️ **Voice filters.** Clean up or play with your sound.
- 📝 **Titles and styled text.**
- 📦 **Templates.** Build an edit once, reuse it.
- 🖥️ **macOS, Windows and Linux.** Same app everywhere.
- 🌍 **Twelve languages.** Add one with a single JSON file, see [TRANSLATING.md](TRANSLATING.md).

## Get started

Sikhi Studio is currently in **Beta version (pre-release)**. **Download** the latest build from [Releases](https://github.com/redroyals/sikhi-studio/releases).

**Portable:** the Windows and Linux builds are plain archives. To keep everything on the stick or in the folder you unpacked into, make a folder named `portable` beside the `concat` executable: settings, recents and downloaded models then live there and nothing is written to the user profile.

**Reporting something:** every run writes a log, and Settings › About has the button that opens it along with the one that copies your system information. Attach both to an [issue](https://github.com/redroyals/sikhi-studio/issues) and the report arrives with everything it needs. The last ten runs are kept, so yesterday's is still there; nothing is ever sent anywhere on its own.

**Platform support:**

- ✅ **Windows** — tested
- ✅ **macOS** — unsigned binaries; run:
  `xattr -dr com.apple.quarantine "/Applications/Sikhi Studio.app"`
- ✅ **Linux**
  - 🧪 ARM
  - 🧪 x86_64
- 🧪 **Android**
  - Phones
  - Tablets
- 🧪 **iOS / iPadOS**
  - iPhone
  - iPad

**Status:** ✅ Supported · 🚧 Work in progress · 🧪 To be tested

**System requirements:**

Sikhi Studio runs everything on your machine, so the hardware sets the ceiling. The minimum column is what a build will run on at all; the recommended column is what makes 1080p editing feel smooth and keeps 4K exports and captions from being a wait.

| | Minimum | Recommended |
|---|---|---|
| **CPU** | Any 64-bit processor from 2013 or later | 6 cores or more |
| **GPU** | None. Without a usable GPU the window and monitor fall back to the CPU | Any GPU with Metal (macOS), DirectX 12 (Windows) or Vulkan (Linux) |
| **RAM** | **4 GB** | **16 GB** for 4K timelines and the larger caption models |
| **Storage** | **500 MB** for the app and the smallest caption model | **2 GB** for every optional model, plus room for projects and exports |

Optional models download from the settings panel on first use and then never need the network again: auto-captions 78 MB to 488 MB depending on the whisper size you pick, text-to-speech 132 MB or 349 MB, person cutout 15 MB, object cutout 179 MB, and the cutout brush 40 MB. (These are mirrored from upstream Concat's own model release — see `engine/crates/concat-host/src/models.rs`.)

## Contribution

> [!IMPORTANT]
> The best way to contribute is to grab a build from the [Release](https://github.com/redroyals/sikhi-studio/releases) page and test the application to see where it breaks or how it can be improved.

Ready to write code? [CONTRIBUTING.md](./CONTRIBUTING.md) covers setup, layout, the checks to run, and how contributions are licensed. Read [ROADMAP.MD](./ROADMAP.MD) for future goals. For anything upstream to the editing engine itself, consider contributing to [Concat](https://github.com/jub0t/Concat) directly.

## Sikhi Studio vs CapCut vs OpenCut

🟢 strong · 🟡 partial or with strings attached · 🔴 weak or missing

| | Sikhi Studio | CapCut | OpenCut | Notes |
|---|:---:|:---:|:---:|---|
| Performance | 🟢 | 🟢 | 🟡 | Sikhi Studio and CapCut are native. OpenCut runs on WebAssembly FFmpeg in a browser |
| Price | 🟢 | 🟡 | 🟢 | CapCut is free until Pro effects, 4K or AI tools, then $9.99 to $19.99 a month |
| Watermark | 🟢 | 🟡 | 🟢 | CapCut stamps exports that use Pro assets |
| Privacy | 🟢 | 🔴 | 🟢 | Sikhi Studio sends nothing anywhere. CapCut's terms grant ByteDance a perpetual licence to uploads |
| Offline | 🟢 | 🟡 | 🟡 | Sikhi Studio's captions, speech, cutout and export all run on device. CapCut's best features are cloud |
| Open source | 🟢 | 🔴 | 🟢 | Sikhi Studio AGPL, OpenCut MIT, CapCut closed |
| 4K export | 🟢 | 🟡 | 🟡 | CapCut caps free at 1080p. OpenCut depends on the browser |
| Effects and templates | 🟡 | 🟢 | 🔴 | CapCut has thousands. Sikhi Studio has a few dozen. OpenCut has a basic set |
| AI tools | 🟡 | 🟢 | 🟡 | CapCut has tracking, reframe, avatars. Sikhi Studio has local captions, speech and person cutout |
| Keyframes | 🟡 | 🟢 | 🟡 | Sikhi Studio keys position, scale, rotation and opacity with bezier easing. No curve editor and no keyed effect parameters yet |
| Export formats | 🟡 | 🟢 | 🟡 | Sikhi Studio writes H.264 MP4 only. OpenCut MP4 and WebM |
| Stability | 🟡 | 🟢 | 🔴 | Sikhi Studio is a 0.2.x beta. OpenCut is mid rewrite |
| Mobile | 🟡 | 🟢 | 🔴 | Sikhi Studio's Android and iOS builds compile but are untested. OpenCut's are in progress |
| Extensibility | 🟡 | 🔴 | 🟢 | OpenCut ships an Editor API, MCP server and plugins. Sikhi Studio's plugin API is planned |
| Community | 🟡 | 🟢 | 🟢 | OpenCut has tens of thousands of stars. Sikhi Studio is a fresh fork |
| Multiple timelines per project | 🟢 | 🟢 | 🔴 | Sikhi Studio only |
