//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.343576, -3.850525, 0.000000, 35.692784, 9.473867, 0.000000};
//+
l = [3.6346358423158787, 3.6346358423158787, 1.3267671684468658, 0.4877342555368171, 1.3151501299037016, 0.6208032423639066, 3.6346358423158787, 3.6346358423158787];
//+
MeshSize {1} = 3.634636;
//+
MeshSize {2} = 3.634636;
//+
MeshSize {3} = 1.326767;
//+
MeshSize {4} = 0.487734;
//+
Disk(2) = {22.991169, 1.056602, 0.000000, 0.669935, 0.669935};
//+
c0 = 0.06699354840675104;
//+
MeshSize {5} = c0;
//+
Disk(3) = {30.882215, -0.102191, 0.000000, 1.495664, 1.495664};
//+
c1 = 0.14956643373999193;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
