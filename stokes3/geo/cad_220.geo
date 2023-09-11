//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.745804, -3.602350, 0.000000, 29.707094, 8.361322, 1.000000};
//+
MeshSize {1} = 0.682363;
//+
MeshSize {2} = 0.682363;
//+
MeshSize {3} = 0.682363;
//+
MeshSize {4} = 3.073853;
//+
MeshSize {5} = 3.073853;
//+
MeshSize {6} = 3.073853;
//+
MeshSize {7} = 3.073853;
//+
MeshSize {8} = 0.123471;
//+
Cylinder(2) = {2.101833, 3.626937, 0.000000, 0.000000, 0.000000, 1.000000, 0.531735, 2*Pi};
//+
MeshSize {9} = 0.053173;
//+
MeshSize {10} = 0.053173;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
