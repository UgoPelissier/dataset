//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.497549, -3.601782, 0.000000, 35.632843, 8.306500, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {2.409169, 2.784284, 0.000000, 0.629774, 0.629774};
//+
c0 = 0.06297742663222461;
//+
MeshSize {5} = c0;
//+
Disk(3) = {3.568006, 0.589863, 0.000000, 1.336300, 1.336300};
//+
c1 = 0.13362995266064912;
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
