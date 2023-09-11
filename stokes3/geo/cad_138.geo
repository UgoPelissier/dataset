//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.818949, -3.118018, 0.000000, 31.543740, 7.866111, 1.000000};
//+
MeshSize {1} = 0.554907;
//+
MeshSize {2} = 0.554907;
//+
MeshSize {3} = 0.556010;
//+
MeshSize {4} = 0.556010;
//+
MeshSize {5} = 3.260081;
//+
MeshSize {6} = 3.260081;
//+
MeshSize {7} = 3.260081;
//+
MeshSize {8} = 3.260081;
//+
Cylinder(2) = {6.384246, 0.805482, 0.000000, 0.000000, 0.000000, 1.000000, 1.260215, 2*Pi};
//+
MeshSize {9} = 0.126022;
//+
MeshSize {10} = 0.126022;
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
