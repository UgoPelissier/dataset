//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.379104, -4.489877, 0.000000, 32.889354, 9.403074, 0.000000};
//+
l = [1.269377363450845, 3.359902903918765, 3.359902903918765, 1.1163531114315546];
//+
MeshSize {1} = 1.269377;
//+
MeshSize {2} = 3.359903;
//+
MeshSize {3} = 3.359903;
//+
MeshSize {4} = 1.116353;
//+
Disk(2) = {12.612945, 2.369667, 0.000000, 1.331924, 1.331924};
//+
c0 = 0.13319242851552726;
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
