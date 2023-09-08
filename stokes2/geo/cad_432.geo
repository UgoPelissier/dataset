//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.712019, -3.990348, 0.000000, 37.809275, 8.728614, 0.000000};
//+
l = [0.4237191647236902, 0.4237191647236902, 3.8767735193134563, 3.8767735193134563, 3.8767735193134563, 3.8767735193134563, 0.8186482745027077, 0.8186482745027077];
//+
MeshSize {1} = 0.423719;
//+
MeshSize {2} = 0.423719;
//+
MeshSize {3} = 3.876774;
//+
MeshSize {4} = 3.876774;
//+
Disk(2) = {5.297168, -2.677417, 0.000000, 0.532230, 0.532230};
//+
c0 = 0.05322295532270458;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.910990, 2.115525, 0.000000, 1.488243, 1.488243};
//+
c1 = 0.14882434174629566;
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
