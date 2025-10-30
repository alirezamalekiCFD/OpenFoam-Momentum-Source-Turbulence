# OpenFoam-Momentum-Source-Turbulence
Momentum source term implementation in OpenFOAM for generating synthetic atmospheric turbulence within the Navier–Stokes framework.

This repository provides an OpenFOAM implementation of a momentum source term designed to generate synthetic atmospheric turbulence within the incompressible Navier–Stokes equations. The method introduces volumetric body-force perturbations that reproduce prescribed turbulence statistics and spectra (e.g., von Kármán-type or Kaimal spectra) within the computational domain.

The source term can be applied in LES or RANS simulations to model gusty inflow conditions, urban canopy flows, or rotor–wake interactions under turbulent atmospheric environments. It is particularly useful for applications in urban air mobility (UAM), wind engineering, airwake ship, urban canyon simulations and etc.

Key Features

💨 Generation of synthetic atmospheric turbulence using volumetric forcing.

🧮 Compatible with pisoFoam and other incompressible solvers, and adaptable (with minor modifications) for use in compressible flow solvers.

⚙️ Configurable turbulence spectra and intensity levels.



🚁 Extensible for gust–rotor interaction and flow control studies
