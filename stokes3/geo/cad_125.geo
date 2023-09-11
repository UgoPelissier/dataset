//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.721061, -3.221159, 0.000000, 35.283040, 8.379115, 1.000000};
//+
l = [1.2562600717518402, 1.2562600717518402, 1.2562600717518402, 3.6247036795991825, 3.6247036795991825, 3.6247036795991825, 3.6247036795991825, 1.1783325641712281, 1.1783325641712281, 1.1783325641712281];
//+
MeshSize {1} = 1.256260;
//+
MeshSize {2} = 1.256260;
//+
MeshSize {3} = 1.256260;
//+
MeshSize {4} = 3.624704;
//+
MeshSize {5} = 3.624704;
//+
MeshSize {6} = 3.624704;
//+
MeshSize {7} = 3.624704;
//+
MeshSize {8} = 1.178333;
//+
Cylinder(2) = {13.233705, 2.200403, 0.000000, 0.000000, 0.000000, 1.000000, 1.074100, 2*Pi};
//+
c0 = 0.10741000043314629;
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
