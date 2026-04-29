# Building and Sharing a Single-file Windows EXE

This document explains how to build a distributable single-file Windows executable (`CodeDocs.exe`) and package it for sharing.

Prerequisites (on the machine you will use to build):
- Windows (the EXE must be built on Windows for Windows targets)
- Python installed (or use the repo virtualenv created earlier)
- The project virtualenv (recommended): `f:/.venv` in this workspace

Quick build (recommended):
1. Open a terminal and run the build script included in the repo:

```powershell
cd /d F:\
.\build_dist.bat
```

2. After a successful build, the executable will be in `dist\CodeDocs.exe`.

Notes and tips:
- The build script uses `pyinstaller` and will install/upgrade it in the venv. If you prefer manual control, run the commands in `build_dist.bat` manually.
- If your app reads other data files (templates, config files, icon files), add them via `--add-data "src;dest"` in the `pyinstaller` command. On Windows use `;` as the separator.
- To include an icon, add `--icon path\to\app.ico` to the PyInstaller args.

Packaging for sharing:
- Zip the `dist\CodeDocs.exe` with `README_RUN.md` and any license or docs.
- Optionally create an installer using Inno Setup if you want shortcuts and an installer UX.

Antivirus & signing:
- Unsigned EXEs may trigger false positives. To reduce issues, distribute via a trusted channel, or sign the EXE using a code-signing certificate.

If you want, I can:
- Run the build here (I can run PyInstaller in the workspace venv), build `dist\CodeDocs.exe`, and attach the result for you to download; or
- Create an Inno Setup script and sample `.iss` installer; or
- Create a ZIP packaging step that zips `dist\CodeDocs.exe` and the docs.

Which option would you like me to do next?