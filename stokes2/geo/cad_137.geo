//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.310275, -3.620653, 0.000000, 33.020412, 7.920332, 0.000000};
//+
l = [3.356512413297464, 0.27382066777807906, 0.5097323585108967, 3.356512413297464];
//+
MeshSize {1} = 3.356512;
//+
MeshSize {2} = 0.273821;
//+
MeshSize {3} = 0.509732;
//+
MeshSize {4} = 3.356512;
//+
Disk(2) = {30.195026, -1.192998, 0.000000, 1.227379, 1.227379};
//+
c0 = 0.12273791056739043;
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
