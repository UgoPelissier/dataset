//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.641704, -4.136347, 0.000000, 29.571870, 9.466986, 1.000000};
//+
MeshSize {1} = 0.609179;
//+
MeshSize {2} = 0.609179;
//+
MeshSize {3} = 0.245562;
//+
MeshSize {4} = 0.245562;
//+
MeshSize {5} = 3.058212;
//+
MeshSize {6} = 3.058212;
//+
MeshSize {7} = 3.058212;
//+
MeshSize {8} = 3.058212;
//+
Cylinder(2) = {2.072958, 2.510241, 0.000000, 0.000000, 0.000000, 1.000000, 0.707157, 2*Pi};
//+
MeshSize {9} = 0.070716;
//+
MeshSize {10} = 0.070716;
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
