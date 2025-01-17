#!/bin/bash

#SBATCH -N 1

#SBATCH -n 2

#SBATCH -p long

#SBATCH -o "log.egapx.stdout.%j.%N"          # standard out %j adds job number to outputfile name and %N adds the node

#SBATCH -e "log.egapx.stderr.%j.%N"          #optional but it prints our standard error

#SBATCH --mail-user=edwardbird@ksu.edu

#SBATCH --mail-type=START,END,FAIL               #will receive an email when job ends or fails



module load python/3.11.1

module load apptainer

module load nextflow/23.10.1

source /project/culicoides/bird_projects/conda/epagx/bin/activate

python3 ui/egapx.py ./examples/input_D_farinae_small.yaml -o example_out