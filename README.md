# Experiment Logbook Generator

GUI tool for generating beamline experiment logbooks from HDF5, XRD, and
temperature log files.

## Install with pip

Install Python 3.10 or newer first. On Windows, use the installer from
python.org and enable "Add python.exe to PATH".

## Install from GitHub

In Anaconda Prompt or PowerShell:

```powershell
conda create -n experiment-logbook python=3.10 -y
conda activate experiment-logbook
python -m pip install git+https://github.com/atukic/Experiment-Logbook-Generator.git
experiment-logbook
```

To update an existing GitHub install:

```powershell
conda activate experiment-logbook
python -m pip install --upgrade --force-reinstall git+https://github.com/atukic/Experiment-Logbook-Generator.git
```

## Install from a Local Folder

From this folder:

```powershell
python -m pip install .
```

For an editable development install:

```powershell
python -m pip install -e .
```

Then run:

```powershell
experiment-logbook
```

On Windows, pip also installs a GUI launcher:

```powershell
experiment-logbook-gui
```

You can also run the package as a module:

```powershell
python -m experiment_logbook
```

If `python` opens the Microsoft Store or pip fails before it starts, disable the
Windows Python app execution aliases in Settings, or reinstall Python from
python.org.

## Install from a zipped copy

If this folder is zipped and copied to another computer:

```powershell
python -m pip install "C:\path\to\experiment-logbook-generator.zip"
```

Then run:

```powershell
experiment-logbook
```
