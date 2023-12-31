//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.688498, -4.808637, 0.000000, 36.599811, 9.871970, 1.000000};
//+
MeshSize {1} = 1.501673;
//+
MeshSize {2} = 1.501673;
//+
MeshSize {3} = 0.606812;
//+
MeshSize {4} = 0.606812;
//+
MeshSize {5} = 0.979443;
//+
MeshSize {6} = 0.979443;
//+
MeshSize {7} = 2.041643;
//+
MeshSize {8} = 2.041643;
//+
Cylinder(2) = {27.792593, -2.586496, 0.000000, 0.000000, 0.000000, 1.000000, 1.482380, 2*Pi};
//+
MeshSize {9} = 0.148238;
//+
MeshSize {10} = 0.148238;
//+
Cylinder(3) = {6.260238, 3.803870, 0.000000, 0.000000, 0.000000, 1.000000, 0.588726, 2*Pi};
//+
MeshSize {11} = 0.058873;
//+
MeshSize {12} = 0.058873;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_196.geo_unrolled";
