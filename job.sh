#!/bin/bash
#SBATCH --job-name          simple-template
#SBATCH --time              720:00:00
#SBATCH --nodes             1
#SBATCH --tasks-per-node    7
#SBATCH --mem-per-cpu       2G
#SBATCH --error             output-%j.error
#SBATCH --output            output-%j.output

# Eliminamos los modulos cargados
module purge

# Cargando los modulos necesarios
module load stress-ng/1.0

# Comandos que seran ejecutados
stress-ng --cpu 7 -t 15m &> output.result
