//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.842530, -3.221849, 0.000000, 37.409833, 7.570934, 1.000000};
//+
MeshSize {1} = 3.843921;
//+
MeshSize {2} = 3.843921;
//+
MeshSize {3} = 3.843921;
//+
MeshSize {4} = 3.843921;
//+
MeshSize {5} = 1.342149;
//+
MeshSize {6} = 1.342149;
//+
MeshSize {7} = 1.263004;
//+
MeshSize {8} = 1.263004;
//+
Cylinder(2) = {24.907260, 2.021129, 0.000000, 0.000000, 0.000000, 1.000000, 0.916587, 2*Pi};
//+
MeshSize {9} = 0.091659;
//+
MeshSize {10} = 0.091659;
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
