//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.721061, -3.221159, 0.000000, 35.283040, 8.379115, 0.000000};
//+
l = [1.2562600717518402, 3.6247036795991825, 3.6247036795991825, 1.1783325641712281];
//+
MeshSize {1} = 1.256260;
//+
MeshSize {2} = 3.624704;
//+
MeshSize {3} = 3.624704;
//+
MeshSize {4} = 1.178333;
//+
Disk(2) = {13.233705, 2.200403, 0.000000, 1.074100, 1.074100};
//+
c0 = 0.10741000043314629;
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
