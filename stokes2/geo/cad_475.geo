//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.474590, -3.619679, 0.000000, 38.228188, 7.529658, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {35.886087, -0.385363, 0.000000, 1.178493, 1.178493};
//+
c0 = 0.11784934052503751;
//+
MeshSize {5} = c0;
//+
Disk(3) = {12.964169, -1.753749, 0.000000, 0.598277, 0.598277};
//+
c1 = 0.059827678840863645;
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
