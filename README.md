# MDverse data analysis

## Setup your environment

Clone the repository:

```bash
git clone https://github.com/MDverse/mdda.git
```

Move to the new directory:

```bash
cd mdda
```

Install [miniconda](https://docs.conda.io/en/latest/miniconda.html).

Install [mamba](https://github.com/mamba-org/mamba):

```bash
conda install mamba -n base -c conda-forge
```

Create the `mdda` conda environment:
```
mamba env create -f binder/environment.yml
```

Load the `mdda` conda environment:
```
conda activate mdda
```

Note: you can also update the conda environment with:

```bash
mamba env update -f binder/environment.yml
```

To deactivate an active environment, use

```
conda deactivate
```

## Get data

Run this command to download required data files:

```bash
bash scripts/get_data.sh
```

Files are downloaded in the `data` directory:

```bash
$ tree data
data
├── data_model_parquet.md
├── datasets.parquet
├── files.parquet
├── gromacs_gro_files.parquet
└── gromacs_mdp_files.parquet
```

The data model is described in the codebook `data/data_model_parquet.md`

## Analyse data

Use this script to run all Jupyter notebooks in batch mode:

```bash
bash make_results.sh
```

The directory `results` contains Jupyter notebooks exported in html, figures as .png and .svg images and a couple of TSV files. All these files are also bundled in the `results.zip` file.
