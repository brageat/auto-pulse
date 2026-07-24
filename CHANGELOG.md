# Changelog

All the notable stuff that's happened to Auto-Pulse. Version numbers match the
`VERSION` file the in-app updater checks, so bumping this is what nudges older
copies to update.

## v1.4.1 (2026-07-24)

### Fixed
- **Antivirus false positive** on the download. The launcher was a `.vbs`, and a
  VBScript that launches a program is a pattern antivirus engines flag on sight —
  which made `auto-pulse-main.zip` show up as "virus detected." Replaced it with
  **`Launch Auto-Pulse.bat`**, which does the same thing (start the app, or remind
  you to install AutoHotkey with an OK button) without tripping the scanners.

## v1.4.0 — "Iron Grip" (2026-07-24)

Auto-Pulse learns to *hold on*. 💪

### Added
- **Key presses are now holdable, just like clicks.** Both hold modes work in
  **Key press** mode:
  - **Hold for (ms)** — press the key, hold it that long, release, repeat.
  - **Hold until stopped** — press on Start, keep it held until Stop.
- **Modifier support for held keys** — hold `^c`, `!{Tab}`, `+{F5}`, and friends
  (a single key plus optional `^` `!` `+` `#`). Modifiers press first and release
  last, so nothing gets left down.
- **`Launch Auto-Pulse.vbs`** — a no-console launcher that starts the app, or (if
  AutoHotkey v2 isn't installed) pops a friendly reminder with an **OK** button
  pointing you to the download. The `.ahk` can't warn you itself — it needs
  AutoHotkey just to run.

### Changed
- Renamed the **"Click Interval"** box to just **"Interval"** — it drives key
  presses now too, not only clicks.

## v1.3.2 (2026-06-23)

### Changed
- Hold options are **mouse-only** again and hidden in key mode. *(Reverted in
  1.4.0 — key holds are back by popular demand of exactly one very persuasive
  user.)*

## v1.3.1 (2026-06-23)

### Fixed
- The **"Random +/-"** label wrapped onto a second line and collided with the
  "Hold for (ms)" row at high-DPI display scaling. Shortened the label so it
  behaves at any zoom level.

## v1.3.0 (2026-06-23)

### Added
- **Hold** support: **Hold for (ms)** (press-and-hold each pulse) and **Hold
  until stopped** (press on Start, release on Stop), for mouse buttons and keys.
- Held input is always released on Stop and on exit, so nothing gets stuck down.

---

*Older versions (≤ 1.2.x) added the dark-mode UI, the configurable start/stop
hotkey, fixed-position cycling, the status HUD, and the GitHub update check.*
