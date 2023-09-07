//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.497549, -3.601782, 0.000000, 35.632843, 8.306500, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {2.409169, 2.784284, 0.000000, 0.000000, 0.000000, 1.000000, 0.629774, 2*Pi};
//+
c0 = 0.06297742663222461;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {3.568006, 0.589863, 0.000000, 0.000000, 0.000000, 1.000000, 1.336300, 2*Pi};
//+
c1 = 0.13362995266064912;
//+
MeshSize {11, 12} = c1;
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
