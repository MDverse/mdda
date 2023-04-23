#! /usr/bin/env bash

# This script downloads the data collection and stores it in the data folder.

DATA_URL="https://zenodo.org/record/7856547"

wget "${DATA_URL}/files/datasets.parquet" -P data/
wget "${DATA_URL}/files/files.parquet" -P data/
wget "${DATA_URL}/files/gromacs_gro_files.parquet" -P data/
wget "${DATA_URL}/files/gromacs_mdp_files.parquet" -P data/
wget "${DATA_URL}/files/data_model_parquet.md" -P data/