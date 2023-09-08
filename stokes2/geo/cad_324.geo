//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.845419, -3.135781, 0.000000, 37.919529, 7.952840, 0.000000};
//+
l = [3.896836019010784, 3.896836019010784, 0.8400804403704822, 0.8400804403704822, 0.7230827679856113, 0.7230827679856113, 3.896836019010784, 3.896836019010784];
//+
MeshSize {1} = 3.896836;
//+
MeshSize {2} = 3.896836;
//+
MeshSize {3} = 0.840080;
//+
MeshSize {4} = 0.840080;
//+
Disk(2) = {31.335408, 2.090946, 0.000000, 0.683068, 0.683068};
//+
c0 = 0.0683068357012595;
//+
MeshSize {5} = c0;
//+
Disk(3) = {26.349015, -1.307189, 0.000000, 0.589300, 0.589300};
//+
c1 = 0.058929982201943926;
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
