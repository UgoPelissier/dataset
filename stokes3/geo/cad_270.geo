//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.993958, -3.987746, 0.000000, 31.375503, 9.526756, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {19.030779, -1.423004, 0.000000, 0.000000, 0.000000, 1.000000, 1.210754, 2*Pi};
//+
c0 = 0.12107540000000001;
//+
Cylinder(3) = {6.688167, -2.791885, 0.000000, 0.000000, 0.000000, 1.000000, 0.559358, 2*Pi};
//+
c1 = 0.05593580000000001;
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
Save "cad_270.msh";
