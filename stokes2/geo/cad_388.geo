//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.393717, -4.284295, 0.000000, 31.354287, 9.941268, 0.000000};
//+
l = [3.213476211571969, 1.055345033504316, 0.9149570881742624, 0.9149570881742624, 1.0143437260777775, 1.0143437260777775, 3.213476211571969, 1.0164679799133758];
//+
MeshSize {1} = 3.213476;
//+
MeshSize {2} = 1.055345;
//+
MeshSize {3} = 0.914957;
//+
MeshSize {4} = 0.914957;
//+
Disk(2) = {22.167871, -0.396949, 0.000000, 1.189211, 1.189211};
//+
c0 = 0.1189210549059649;
//+
MeshSize {5} = c0;
//+
Disk(3) = {10.331950, 1.121157, 0.000000, 0.759701, 0.759701};
//+
c1 = 0.07597007690902981;
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
