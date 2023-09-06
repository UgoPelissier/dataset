//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.712899, -4.296232, 0.000000, 34.621950, 9.934204, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {26.704063, -0.340789, 0.000000, 0.000000, 0.000000, 1.000000, 0.631795, 2*Pi};
//+
c0 = 0.0631795;
//+
Cylinder(3) = {28.721968, 4.169277, 0.000000, 0.000000, 0.000000, 1.000000, 0.968276, 2*Pi};
//+
c1 = 0.09682760000000001;
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
Save "cad_456.msh";
