#!/bin/bash
#openfoam2206

# Cleaning case
foamCleanTutorials

# Meshing
blockMesh

# Domain decomposition for parallel execution
decomposePar

# Parallel execution with mpi
mpirun -np 12 fhdFoam -parallel
#fhdFoam

# Reconstruct decomposed solution
reconstructPar

# fhdFoam -postProcess -func wallHeatFlux
