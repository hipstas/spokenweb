#!/bin/bash

#SBATCH --job-name=convert_mp3
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32GB
#SBATCH --time=72:00:00

module purge
module load ffmpeg/intel/3.2.2

runs=0
for filename in /scratch/ci411/spokenweb/commonvoice/clips/*.mp3; do
    filenameshort="${filename##*/}"
    namenoext="${filenameshort%.*}"
    ffmpeg -i $filename $"/scratch/ci411/spokenweb/scaper_files/foreground/commonvoice_wav/$namenoext.wav"
    runs=$(($runs+1))
    if [ "$runs" == "100" ]
        then
            break
    fi
done

