# Release v2.0 — Code Files to Documents (CodeTODocs)

## Summary
Release v2.0 modernizes the GUI, fixes a crash on startup, and adds packaging helpers so non-technical users can run the app by double-clicking an executable.

## Highlights
- Fixed NameError by adding missing `WHITE` color constant.
- Modernized UI: larger fonts, card-style sections, themed scrollbar, header separator.
- Optional `ttkbootstrap` support (prefers `cyborg` dark theme when installed).
- Launchers included: `run_with_venv.bat`, `run_with_venv_no_console.bat`.
- Packaging: `build_dist.bat` (PyInstaller), `installer.iss` (Inno Setup), `zip_pack.bat`, `package_exe.bat`.
- Added `README.md`, `.gitignore`, and `LICENSE` (MIT).

## Files to attach
- `dist\CodeDocs.exe` (built with `build_dist.bat`)
- `README_RUN.md`, `DIST_INSTRUCTIONS.md`, `SHARE_README.md`

## For users
If you just want to run the app, download `CodeDocs.exe` from the release assets and double-click it. If you prefer a ZIP, download the packaged ZIP asset, unzip it, and run the EXE inside.

## Windows download & install instructions (for release notes)
1. Download `CodeDocs.exe` from the release assets.
2. Run directly (portable EXE) or run the included installer (if provided) to install to Program Files.
3. If you see antivirus warning, allow the app or download from the official project releases page.

## Changelog (high level)
- UI: fonts, buttons, padding, accent styles
- Packaging: build scripts and installer script
- Bugfix: startup NameError for missing color constant

## How I built the release (so maintainers can reproduce)
1. Create and activate a virtualenv.
2. Install requirements: `pip install -r requirements.txt`.
3. Build: `.uild_dist.bat` (on Windows) — this produces `dist\CodeDocs.exe`.
4. Optionally build installer: run `build_installer.bat` (requires Inno Setup installed).
5. Package for sharing: run `zip_pack.bat` or `package_exe.bat`.

## Suggested GitHub release notes copy
```
Code Files to Documents v2.0

Modernized the GUI, fixed a startup crash, and added simple packaging so non-technical users can run a single-file executable.

Assets:
- CodeDocs.exe — single-file Windows executable
- README_RUN.md, DIST_INSTRUCTIONS.md — build and run notes
```

---

If you'd like, I can:
- Commit these changes locally and show the exact `git` commands to push to your remote.
- Create the release on GitHub via the API (requires a token you provide).
- Attach the built `dist\CodeDocs.exe` to a draft release (I can run the build and upload here if you want me to produce the exe and provide it for download).
