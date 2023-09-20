//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.533940, -4.160542, 0.000000, 33.959133, 9.989584, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {23.017794, -0.415863, 0.000000, 0.000000, 0.000000, 1.000000, 1.178078, 2*Pi};
//+
MeshSize {9} = 0.117808;
//+
MeshSize {10} = 0.117808;
//+
Cylinder(3) = {27.377052, -0.437698, 0.000000, 0.000000, 0.000000, 1.000000, 0.670689, 2*Pi};
//+
MeshSize {11} = 0.067069;
//+
MeshSize {12} = 0.067069;
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
Save "../geo_unrolled/cad_377.geo_unrolled";
