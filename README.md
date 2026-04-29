# Code Files to Documents (CodeTODocs)

Convert a codebase into merged documentation files (TXT, DOCX, HTML) suitable for sharing or feeding into AI systems.

Key features
- Extract symbols (classes, functions) across many languages
- Optional syntax highlighting with `pygments`
- Export to `.docx` via `python-docx`
- Modern dark GUI with optional `ttkbootstrap` theme

Quick Start (Windows)

1. Open PowerShell and set up a virtual environment (recommended):

```powershell
cd "<path-to-repo>/CodeTODocs"
python -m venv .venv
.\.venv\Scripts\Activate.ps1     # or use activate.bat for cmd.exe
pip install -r requirements.txt
```

2. Run the GUI:

```powershell
.\.venv\Scripts\python.exe code_to_documents_gui.py
```

Or double-click `run_with_venv_no_console.bat` at the repo root to launch without a console window.

Building a single-file executable

Run the included build script to create a single-file `CodeDocs.exe` using PyInstaller (Windows only):

```powershell
cd "F:\CODE TO DOCS\CodeTODocs"
.\build_dist.bat
```

Packaging

- Use `installer.iss` and `build_installer.bat` (requires Inno Setup) to create an installer.
- Use `zip_pack.bat` to create a simple distributable ZIP containing the exe and docs.

Repository layout
- `code_to_documents_gui.py` — main application
- `requirements.txt` — dependencies
- `build_dist.bat` — PyInstaller build script
- `installer.iss`, `build_installer.bat` — Inno Setup installer
- `run_with_venv.bat`, `run_with_venv_no_console.bat` — launchers
- `zip_pack.bat` — create ZIP package

Contributing

If you want to contribute or package this for distribution, please open an issue or submit a pull request.

License

