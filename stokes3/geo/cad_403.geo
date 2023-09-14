//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.992597, -3.953405, 0.000000, 31.893743, 9.514182, 1.000000};
//+
MeshSize {1} = 0.539857;
//+
MeshSize {2} = 0.539857;
//+
MeshSize {3} = 0.535748;
//+
MeshSize {4} = 0.535748;
//+
MeshSize {5} = 3.322862;
//+
MeshSize {6} = 3.322862;
//+
MeshSize {7} = 3.322862;
//+
MeshSize {8} = 3.322862;
//+
Cylinder(2) = {4.589870, 0.829447, 0.000000, 0.000000, 0.000000, 1.000000, 0.586078, 2*Pi};
//+
MeshSize {9} = 0.058608;
//+
MeshSize {10} = 0.058608;
//+
Cylinder(3) = {6.833248, -0.241535, 0.000000, 0.000000, 0.000000, 1.000000, 1.367526, 2*Pi};
//+
MeshSize {11} = 0.136753;
//+
MeshSize {12} = 0.136753;
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
Save "../geo_unrolled/cad_403.geo_unrolled";
