# AutoClicker

A simple dark-mode autoclicker for Windows, written in AutoHotkey v2. It can repeatedly
**click the mouse** or **press keys** on a timer.

> [!IMPORTANT]
> **This is an AutoHotkey v2 script, not a standalone `.exe`.** You must install
> [AutoHotkey v2](https://www.autohotkey.com/) before it will run. See
> [Requirements](#requirements) below.

## Features

- **Action mode** — choose **Mouse click** or **Key press**; the interval, randomization
  and repeat settings drive whichever is selected.
- **Configurable interval** in milliseconds, with optional `+/-` randomization to vary the timing.
- **Global hotkeys** that work even when the window isn't focused:
  - **F6** — start / stop
  - **F8** — arm the position picker (then click the target to add it; **Esc** cancels) — mouse mode only
- **Mouse button & click type** — Left / Right / Middle, Single or Double click.
- **Click location** — click at the current cursor position, or at one or more **fixed
  positions**. Add a point by typing its X/Y and pressing **Add**, or by pressing **Pick**
  (F8) and clicking the target. With several points saved, the clicker **cycles** through
  them — one click per interval, looping back to the first. **Remove** drops the selected
  point and **Clear** empties the list.
- **Key press** — type the key(s) to send using AutoHotkey
  [send syntax](https://www.autohotkey.com/docs/v2/lib/Send.htm), e.g. `{Space}`, `{Enter}`,
  `{F5}`, `a`, `^c` (Ctrl+C), `!{Tab}` (Alt+Tab). Keys are sent to the **focused window**.
- **Repeat** — run until stopped, or stop automatically after N times.
- **Dark mode** UI (dark window, inputs, and title bar) — toggle it on/off with the
  **Dark mode** checkbox; your settings are preserved when switching.
- **Always on top** — keep the window above other windows; toggle with the
  **Always on top** checkbox (on by default).

## Requirements

**[AutoHotkey v2](https://www.autohotkey.com/) (v2.0 or later) is required** — the script
will not run without it. AutoHotkey **v1 will not work**; this script uses v2 syntax.

Install it with winget:

```powershell
winget install AutoHotkey.AutoHotkey
```

(or download the v2 installer from https://www.autohotkey.com/)

To confirm it's installed, check that this file exists:

```powershell
Test-Path "$env:ProgramFiles\AutoHotkey\v2\AutoHotkey64.exe"
```

## Running

Double-click `autoclicker.ahk`, or from a terminal:

```powershell
& "$env:ProgramFiles\AutoHotkey\v2\AutoHotkey64.exe" .\autoclicker.ahk
```

## Usage

1. Choose the **Action**: **Mouse click** or **Key press**.
2. Set the **Interval** (and optional random variance).
3. **Mouse click** — pick the **Button** and **Type** (single/double), then choose
   **Current cursor position**, or **Fixed position(s)**. For fixed positions, add one or
   more points: type the X/Y and press **Add**, or press **Pick** (or **F8**) and click the
   target on screen (**Esc** cancels). With more than one point saved, clicks cycle through
   the list in order. Use **Remove**/**Clear** to manage the list.
   **Key press** — type the **Key(s)** to send (AutoHotkey send syntax, e.g. `{Space}`).
4. Choose **Until stopped** or **Stop after N times**.
5. Press **Start** (or **F6**). Press **F6** again to stop.

## Notes

- Mouse coordinates are absolute **screen** coordinates.
- In **Key press** mode the keys go to whatever window has focus. Start with **F6** after
  focusing the target window — the on-screen **Start** button leaves this window focused,
  so the first keys would land here instead.
- Use responsibly — many games and applications prohibit automated input.
