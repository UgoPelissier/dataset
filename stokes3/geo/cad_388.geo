//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.393717, -4.284295, 0.000000, 31.354287, 9.941268, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {22.167871, -0.396949, 0.000000, 0.000000, 0.000000, 1.000000, 1.189211, 2*Pi};
//+
c0 = 0.1189210549059649;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {10.331950, 1.121157, 0.000000, 0.000000, 0.000000, 1.000000, 0.759701, 2*Pi};
//+
c1 = 0.07597007690902981;
//+
MeshSize {11, 12} = c1;
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
