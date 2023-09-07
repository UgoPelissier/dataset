//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.660672, -4.661875, 0.000000, 35.525487, 9.495138, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {25.752863, 1.271407, 0.000000, 1.239655, 1.239655};
//+
c0 = 0.12396552889765947;
//+
MeshSize {5} = c0;
//+
Disk(3) = {11.155015, -1.330103, 0.000000, 0.769766, 0.769766};
//+
c1 = 0.07697664432393865;
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
