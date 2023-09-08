//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.382480, -3.349937, 0.000000, 38.685193, 8.439114, 0.000000};
//+
l = [3.9294881895962313, 1.2222297013379688, 1.1902968536542111, 3.9294881895962313];
//+
MeshSize {1} = 3.929488;
//+
MeshSize {2} = 1.222230;
//+
MeshSize {3} = 1.190297;
//+
MeshSize {4} = 3.929488;
//+
Disk(2) = {26.672686, 1.365386, 0.000000, 1.039300, 1.039300};
//+
c0 = 0.10393002639188603;
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
