//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.911336, -3.931412, 0.000000, 32.838244, 9.507042, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {6.497212, 0.132097, 0.000000, 0.000000, 0.000000, 1.000000, 1.448212, 2*Pi};
//+
c0 = 0.1448212;
//+
Cylinder(3) = {26.108077, 3.469603, 0.000000, 0.000000, 0.000000, 1.000000, 0.924209, 2*Pi};
//+
c1 = 0.0924209;
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
Save "cad_357.msh";
