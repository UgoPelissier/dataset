//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.382480, -3.349937, 0.000000, 38.685193, 8.439114, 1.000000};
//+
l = [3.9294881895962313, 3.9294881895962313, 1.2222297013379688, 1.2222297013379688, 1.2222297013379688, 1.1902968536542111, 1.1902968536542111, 1.1902968536542111, 3.9294881895962313, 3.9294881895962313];
//+
MeshSize {1} = 3.929488;
//+
MeshSize {2} = 3.929488;
//+
MeshSize {3} = 1.222230;
//+
MeshSize {4} = 1.222230;
//+
MeshSize {5} = 1.222230;
//+
MeshSize {6} = 1.190297;
//+
MeshSize {7} = 1.190297;
//+
MeshSize {8} = 1.190297;
//+
Cylinder(2) = {26.672686, 1.365386, 0.000000, 0.000000, 0.000000, 1.000000, 1.039300, 2*Pi};
//+
c0 = 0.10393002639188603;
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
