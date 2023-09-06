//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.327301, -3.447748, 0.000000, 29.752391, 8.001678, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {16.959133, -1.569055, 0.000000, 0.000000, 0.000000, 1.000000, 1.122718, 2*Pi};
//+
c0 = 0.11227180000000002;
//+
Cylinder(3) = {13.954772, 0.733681, 0.000000, 0.000000, 0.000000, 1.000000, 0.993361, 2*Pi};
//+
c1 = 0.09933610000000001;
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
Save "cad_288.msh";
