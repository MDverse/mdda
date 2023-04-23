#! /usr/bin/env bash

# This script downloads the data collection and stores it in the data folder.

DATA_URL="https://zenodo.org/record/7856806"

for name in "datasets.parquet" "files.parquet" "gromacs_gro_files.parquet" "gromacs_mdp_files.parquet" "gromacs_xtc_files.parquet" "data_model_parquet.md"
do
    wget "${DATA_URL}/files/${name}" -O "data/${name}"
done

tree --du -h data/