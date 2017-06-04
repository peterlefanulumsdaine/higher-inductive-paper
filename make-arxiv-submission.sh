#!/bin/bash

# Create a .zip file containing all files needed for arXiv submission,
# for easy uploading

master_name=pushout-arxiv

latexmk -bibtex -pdf ${master_name}

current_date=$(date "+%Y-%m-%d")
submission_name="${current_date}-arxiv-submission"
submission_dir_name="${submission_name}-temp"

# create temporary directory of files for arXiv:
rm -rf $submission_dir_name
mkdir $submission_dir_name
cp *.tex ${submission_dir_name}/
cp ${master_name}.bbl ${submission_dir_name}/
# remove any files *not* to be included in submission
cd $submission_dir_name
rm pushout-mpcps.tex
rm higher-inductive-semantics.tex

# create zip archive, from inside temp directory so files are at root level of archive
zip -r ../${submission_name}.zip *
cd ..

# clean up temp directory
rm -rf $submission_dir_name
