//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.987233, -4.117404, 0.000000, 29.090998, 9.542760, 1.000000};
//+
MeshSize {1} = 0.838475;
//+
MeshSize {2} = 0.838475;
//+
MeshSize {3} = 1.247344;
//+
MeshSize {4} = 1.247344;
//+
MeshSize {5} = 0.838475;
//+
MeshSize {6} = 0.838475;
//+
MeshSize {7} = 3.045433;
//+
MeshSize {8} = 3.045433;
//+
Cylinder(2) = {9.004783, 1.559179, 0.000000, 0.000000, 0.000000, 1.000000, 1.438930, 2*Pi};
//+
MeshSize {9} = 0.143893;
//+
MeshSize {10} = 0.143893;
//+
Cylinder(3) = {16.639989, -2.172426, 0.000000, 0.000000, 0.000000, 1.000000, 1.104830, 2*Pi};
//+
MeshSize {11} = 0.110483;
//+
MeshSize {12} = 0.110483;
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
Save "../geo_unrolled/cad_018.geo_unrolled";
