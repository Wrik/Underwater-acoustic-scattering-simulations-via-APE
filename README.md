# Underwater-acoustic-scattering-simulations-via-APE
This repository contains info for validation and reproducability of underwater acoustic scattering simulations from non-uniform bathymetry

To perform the APE simulations of numercial validation case presented in paper (info to be shared), please use the following instructions:
1. Use the Gmsh geometry file seamount_case1.geo
2. Generate order 4 Gmsh mesh with following command:

gmsh -2 seamount_case1.geo -order 4

3. Install Nektar++ from https://www.nektar.info/
4. General Nektar++ compatible mesh via following command:

NekMesh seamount_case1.msh seamount_case1.xml

5. Modify last line of the .xml file '<EXPANSIONS>' sections to match with the .xml file shared
6. Use the 'seamount_case1_conditions.xml' file provided and following command (please check Nektar++ user manual for exact commands as per your installation):

AcousticSolver seamount_case1.xml seamount_case1_conditions.xml
