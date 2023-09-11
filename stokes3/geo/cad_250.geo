//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.660672, -4.661875, 0.000000, 35.525487, 9.495138, 1.000000};
//+
MeshSize {1} = 3.649627;
//+
MeshSize {2} = 3.649627;
//+
MeshSize {3} = 1.076274;
//+
MeshSize {4} = 1.076274;
//+
MeshSize {5} = 1.024077;
//+
MeshSize {6} = 1.024077;
//+
MeshSize {7} = 1.076274;
//+
MeshSize {8} = 1.076274;
//+
Cylinder(2) = {25.752863, 1.271407, 0.000000, 0.000000, 0.000000, 1.000000, 1.239655, 2*Pi};
//+
MeshSize {9} = 0.123966;
//+
MeshSize {10} = 0.123966;
//+
Cylinder(3) = {11.155015, -1.330103, 0.000000, 0.000000, 0.000000, 1.000000, 0.769766, 2*Pi};
//+
MeshSize {11} = 0.076977;
//+
MeshSize {12} = 0.076977;
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
