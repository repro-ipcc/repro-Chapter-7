# ipcc-ar6-wg1-figure Chapter 7

Box 7.2 Figure 1 / Fig. 7.4 / 7.5 / 7.6
| Input | Running | Output | Quality | Post-process |
|-------|---------|--------|---------|--------------|
| ![Code](https://img.shields.io/badge/Code-Complete-green) <br> ![Dependence](https://img.shields.io/badge/Dependence-Complete-green) <br> ![Data](https://img.shields.io/badge/Data-Complete-green) | ![Running](https://img.shields.io/badge/Running-green) | ![Full](https://img.shields.io/badge/1/1-Full-green) | ![Same](https://img.shields.io/badge/1/1-Same-green) | ![Self-contained](https://img.shields.io/badge/Self_contained-green)

Fig.7.3 / 7.7 / 7.8 / 7.16 / 7.18 / 7.21 / 7.22 / Fig.7.SM.1
| Input | Running | Output | Quality | Post-process |
|-------|---------|--------|---------|--------------|
| ![Code](https://img.shields.io/badge/Code-Complete-green) <br> ![Dependence](https://img.shields.io/badge/Dependence-Complete-green) <br> ![Data](https://img.shields.io/badge/Data-Complete-green) | ![Running](https://img.shields.io/badge/Running-green) | ![Full](https://img.shields.io/badge/1/1-Full-green) | ![Same](https://img.shields.io/badge/1/1-Same-green) | ![Auto](https://img.shields.io/badge/Auto-orange)

FAQ7.3 Figure1 
| Input | Running | Output | Quality | Post-process |
|-------|---------|--------|---------|--------------|
| ![Code](https://img.shields.io/badge/Code-Complete-green) <br> ![Dependence](https://img.shields.io/badge/Dependence-Complete-green) <br> ![Data](https://img.shields.io/badge/Data-Complete-green) | ![Running](https://img.shields.io/badge/Running-green) | ![Partial](https://img.shields.io/badge/2/1-Partial-orange) | ![Different](https://img.shields.io/badge/2/1-DIfferent-red) | 

Project to re-create the IPCC AR6 WG1 figures. See https://ipcc.ch and https://github.com/IPCC-WG1

The instructions are meant to run a recent ubuntu Linux system.

Download the Anaconda Miniforge installer from:
https://conda-forge.org/miniforge/

Install Miniforge:
sh Miniforge3*.sh

Disconnect from your shell and reconnect to install the new commands.

Clone this repository and connect to it.

Install the submodules:
```sh
git submodule init
git submodule update
```

Download the dataset:

```sh
bash download.sh
```

But the download process is extremely slow, better use .pynb instead of .py for 110_chapter4_SSP_ERF.ipynb and 150_WG3_run_large_fair_ensemble.ipynb

Install the conda environment:

```sh
bash install.sh
```

To re-create the figure of Chapter 6 Figure SM5:

```sh
bash run.sh
```

The figures are generated in the root path.

