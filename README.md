# Molecular dynamics data analysis

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
conda activate mdws
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

Data files should be located in the `data` directory and comply with the [data model](https://github.com/MDverse/mdws/blob/main/docs/data_model.md).

## Analyse data

Run all Jupyter notebooks in batch mode:
```
jupyter nbconvert --to html  --execute --allow-errors --output-dir results notebooks/analyze_zenodo.ipynb
jupyter nbconvert --to html  --execute --allow-errors --output-dir results notebooks/zenodo_stats.ipynb
jupyter nbconvert --to html  --execute --allow-errors --output-dir results notebooks/search_MD_in_pubmed.ipynb
jupyter nbconvert --to html  --execute --allow-errors --output-dir results notebooks/analyze_all2.ipynb
cp notebooks/*.{svg,png} results/
```
