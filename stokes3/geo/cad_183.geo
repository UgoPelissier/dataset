//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.842530, -3.221849, 0.000000, 37.409833, 7.570934, 1.000000};
//+
l = [3.843921187322003, 3.843921187322003, 1.3421494663140578, 1.3421494663140578, 1.3421494663140578, 1.263004169834094, 1.263004169834094, 1.263004169834094, 3.843921187322003, 3.843921187322003];
//+
MeshSize {1} = 3.843921;
//+
MeshSize {2} = 3.843921;
//+
MeshSize {3} = 1.342149;
//+
MeshSize {4} = 1.342149;
//+
MeshSize {5} = 1.342149;
//+
MeshSize {6} = 1.263004;
//+
MeshSize {7} = 1.263004;
//+
MeshSize {8} = 1.263004;
//+
Cylinder(2) = {24.907260, 2.021129, 0.000000, 0.000000, 0.000000, 1.000000, 0.916587, 2*Pi};
//+
c0 = 0.09165867836632463;
//+
MeshSize {9, 10} = c0;
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
