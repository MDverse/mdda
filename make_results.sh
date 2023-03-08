#! /usr/bin/env bash

rm -rf results/*
jupyter nbconvert --to html  --execute --allow-errors --output-dir results notebooks/paper_numbers_figures.ipynb
jupyter nbconvert --to html  --execute --allow-errors --output-dir results notebooks/search_MD_in_pubmed.ipynb
mkdir -p results/fig
cp notebooks/fig/*.{svg,png} results/fig/
cp notebooks/*.tsv results/

tree results/
