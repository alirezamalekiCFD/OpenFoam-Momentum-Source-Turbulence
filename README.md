# OpenFoam-Momentum-Source-Turbulence

Overview

This repository provides an OpenFOAM implementation of a momentum source term designed to generate synthetic atmospheric turbulence within the incompressible Navier–Stokes equations.
The method introduces volumetric body-force perturbations that reproduce prescribed turbulence statistics and spectra (e.g., von Kármán-type or Kaimal spectra) directly within the computational domain.

The source term can be applied in LES or RANS simulations to model gusty inflow conditions, urban canopy flows, or rotor–wake interactions under turbulent atmospheric environments. It is particularly useful for applications involving:

Urban Air Mobility (UAM)

Wind engineering

Airwake/ship flows

Urban canyon aerodynamics

Gust–rotor interactions

Key Features

💨 Synthetic Turbulence Generation — Volumetric forcing to impose prescribed spectral characteristics.

🧮 Solver Compatibility — Fully compatible with pisoFoam and other incompressible solvers; adaptable (with minor modifications) for compressible solvers.

⚙️ Configurable Inputs — User-defined turbulence spectra, intensity, and spatial parameters.

🚁 Extensible Framework — Suitable for gust–rotor interaction and flow-control studies.

Compilation Instructions

To compile the solver:

Copy the folder mypisoFoam_AR2_In10 into
OpenFOAM-v2312/applications/solvers/incompressible/

Navigate to the folder, and by using the following command compile the code:

wclean

wmake

You need to verify successful compilation by

mypisoFoam_AR2_In10 -help


If the command returns solver information, the build was successful.

Before running the case, generate the computational mesh:

blockMesh

snappyHexMesh

renumberMesh

reconstructParMesh -constant

After generating the mesh:

Copy the polyMesh directory from the latest time step to the constant/ folder, replacing the existing one.

Delete the intermediate time-step folders created during snappyHexMesh.

Running the Solver:

Once the mesh and solver are ready, run the case using:

mypisoFoam_AR2_In10


This version of the solver corresponds to a wall-mounted rectangular cylinder case with an aspect ratio of 2 and turbulence intensity of 10%, the same configuration discussed in the submitted Journal of Fluid Mechanics draft.
Further methodological and validation details are available in the associated publication.
