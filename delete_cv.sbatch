#!/bin/bash

#SBATCH --job-name=deletefiles
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32GB
#SBATCH --time=72:00:00

module purge

rm -rf /scratch/ci411/spokenweb/scaper_files/commonvoice_wav 

