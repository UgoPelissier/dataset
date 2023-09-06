//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.474590, -3.619679, 0.000000, 38.228187, 7.529658, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {35.886087, -0.385363, 0.000000, 0.000000, 0.000000, 1.000000, 1.178493, 2*Pi};
//+
c0 = 0.1178493;
//+
Cylinder(3) = {12.964169, -1.753749, 0.000000, 0.000000, 0.000000, 1.000000, 0.598277, 2*Pi};
//+
c1 = 0.0598277;
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
Save "cad_475.msh";
