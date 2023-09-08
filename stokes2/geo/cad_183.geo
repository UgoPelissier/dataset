//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.842530, -3.221849, 0.000000, 37.409833, 7.570934, 0.000000};
//+
l = [3.843921187322003, 1.3421494663140578, 1.263004169834094, 3.843921187322003];
//+
MeshSize {1} = 3.843921;
//+
MeshSize {2} = 1.342149;
//+
MeshSize {3} = 1.263004;
//+
MeshSize {4} = 3.843921;
//+
Disk(2) = {24.907260, 2.021129, 0.000000, 0.916587, 0.916587};
//+
c0 = 0.09165867836632463;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
