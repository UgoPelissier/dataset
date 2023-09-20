//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.937585, -3.377313, 0.000000, 33.603183, 8.320484, 1.000000};
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
Cylinder(2) = {2.333038, 2.408085, 0.000000, 0.000000, 0.000000, 1.000000, 0.693615, 2*Pi};
//+
MeshSize {9} = 0.069361;
//+
MeshSize {10} = 0.069361;
//+
Cylinder(3) = {19.799187, 1.142933, 0.000000, 0.000000, 0.000000, 1.000000, 0.756286, 2*Pi};
//+
MeshSize {11} = 0.075629;
//+
MeshSize {12} = 0.075629;
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
Save "../geo_unrolled/cad_497.geo_unrolled";
