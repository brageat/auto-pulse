# AutoClicker

A simple dark-mode autoclicker for Windows, written in AutoHotkey v2.

## Features

- **Configurable interval** in milliseconds, with optional `+/-` randomization to vary the timing.
- **Global hotkeys** that work even when the window isn't focused:
  - **F6** — start / stop clicking
  - **F8** — arm the position picker (then click the target; **Esc** cancels)
- **Mouse button & click type** — Left / Right / Middle, Single or Double click.
- **Click location** — click at the current cursor position, or at a fixed X/Y point.
- **Repeat** — run until stopped, or stop automatically after N clicks.
- **Dark mode** UI (dark window, inputs, and title bar) — toggle it on/off with the
  **Dark mode** checkbox; your settings are preserved when switching.

## Requirements

[AutoHotkey v2](https://www.autohotkey.com/) (v2.0 or later). It is **not** currently
installed on this machine.

Install it with winget:

```powershell
winget install AutoHotkey.AutoHotkey
```

(or download the v2 installer from https://www.autohotkey.com/)

## Running

Double-click `autoclicker.ahk`, or from a terminal:

```powershell
& "$env:ProgramFiles\AutoHotkey\v2\AutoHotkey64.exe" .\autoclicker.ahk
```

## Usage

1. Set the **Interval** (and optional random variance).
2. Pick the **Button** and **Type** (single/double).
3. Choose **Current cursor position**, or select **Fixed position** and either type the
   X/Y, or click **Pick** (or press **F8**) and then click the target location on screen
   to capture its coordinates (**Esc** cancels).
4. Choose **Until stopped** or **Stop after N clicks**.
5. Press **Start** (or **F6**). Press **F6** again to stop.

## Notes

- Coordinates are absolute **screen** coordinates.
- Use responsibly — many games and applications prohibit automated input.
