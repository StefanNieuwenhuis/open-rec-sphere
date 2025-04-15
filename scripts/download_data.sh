#!/bin/bash

set -e

echo "Downloading Expedia dataset via Kaggle CLI..."

mkdir -p data/raw

# WARNING! This script assumes the presence of Kaggle cli
# See https://github.com/StefanNieuwenhuis/open-rec-sphere/wiki/Data-Ingestion
kaggle competitions download -c expedia-hotel-recommendations -p data/raw/expedia

cd data/raw/expedia && unzip -o expedia-hotel-recommendations.zip && rm expedia-hotel-recommendations.zip
echo "✅ Download complete."