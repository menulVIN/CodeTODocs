# Code Files to Documents (CodeTODocs)

Convert a codebase into merged documentation files (TXT, DOCX, HTML) suitable for sharing or feeding into AI systems.

## Download and run

If you just want to use the app, download the latest Windows release from the GitHub **Releases** page and run `CodeDocs.exe`.

Release page:
- https://github.com/<your-username>/<your-repo>/releases/latest

How to use it:
1. Download the release asset ZIP or EXE.
2. Unzip it if needed.
3. Double-click `CodeDocs.exe`.

## What it does

- Extracts symbols such as classes and functions across many languages
- Optional syntax highlighting with `pygments`
- Export to `.docx` via `python-docx`
- Modern dark GUI with optional `ttkbootstrap` theme

## For Windows users who want to run from source

If you prefer to run from the source code instead of the release EXE:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1     # or use activate.bat for cmd.exe
pip install -r requirements.txt
.\.venv\Scripts\python.exe code_to_documents_gui.py
```

You can also double-click `run_with_venv_no_console.bat` to launch without a console window.

## Build a release EXE

For maintainers or contributors, run the included build script to create a single-file `CodeDocs.exe` using PyInstaller on Windows:

```powershell
.\build_dist.bat
```

## Packaging

- Use `installer.iss` and `build_installer.bat` (requires Inno Setup) to create an installer.
- Use `zip_pack.bat` to create a simple distributable ZIP containing the EXE and docs.

## Repository layout

- `code_to_documents_gui.py` — main application
- `requirements.txt` — dependencies
- `build_dist.bat` — PyInstaller build script
- `installer.iss`, `build_installer.bat` — Inno Setup installer
- `run_with_venv.bat`, `run_with_venv_no_console.bat` — launchers
- `zip_pack.bat` — create ZIP package

## Contributing

If you want to contribute or package this for distribution, please open an issue or submit a pull request.

## License

