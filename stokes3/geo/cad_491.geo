//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.968574, -4.113265, 0.000000, 30.794664, 9.175357, 1.000000};
//+
MeshSize {1} = 1.179207;
//+
MeshSize {2} = 1.179207;
//+
MeshSize {3} = 1.179207;
//+
MeshSize {4} = 1.179207;
//+
MeshSize {5} = 1.179207;
//+
MeshSize {6} = 1.179207;
//+
MeshSize {7} = 3.209284;
//+
MeshSize {8} = 3.209284;
//+
Cylinder(2) = {13.806579, -1.520406, 0.000000, 0.000000, 0.000000, 1.000000, 1.305154, 2*Pi};
//+
MeshSize {9} = 0.130515;
//+
MeshSize {10} = 0.130515;
//+
Cylinder(3) = {22.914098, 0.850617, 0.000000, 0.000000, 0.000000, 1.000000, 0.825972, 2*Pi};
//+
MeshSize {11} = 0.082597;
//+
MeshSize {12} = 0.082597;
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
