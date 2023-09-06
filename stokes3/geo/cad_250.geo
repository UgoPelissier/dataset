//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.660672, -4.661875, 0.000000, 35.525487, 9.495138, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {25.752863, 1.271407, 0.000000, 0.000000, 0.000000, 1.000000, 1.239655, 2*Pi};
//+
c0 = 0.1239655;
//+
Cylinder(3) = {11.155015, -1.330103, 0.000000, 0.000000, 0.000000, 1.000000, 0.769766, 2*Pi};
//+
c1 = 0.0769766;
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
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_250.msh";
