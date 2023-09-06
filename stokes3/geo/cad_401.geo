//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.412904, -3.258512, 0.000000, 31.411168, 8.223988, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {20.268519, 0.968205, 0.000000, 0.000000, 0.000000, 1.000000, 0.772134, 2*Pi};
//+
c0 = 0.0772134;
//+
Cylinder(3) = {15.707711, -1.300107, 0.000000, 0.000000, 0.000000, 1.000000, 0.811577, 2*Pi};
//+
c1 = 0.0811577;
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
Save "cad_401.msh";