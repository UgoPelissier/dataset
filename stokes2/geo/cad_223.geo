//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.653534, -4.073803, 0.000000, 31.131202, 8.843146, 0.000000};
//+
l = [3.209080506588801, 1.5443397110411892, 1.4504113891294574, 1.5666009453895364];
//+
MeshSize {1} = 3.209081;
//+
MeshSize {2} = 1.544340;
//+
MeshSize {3} = 1.450411;
//+
MeshSize {4} = 1.566601;
//+
Disk(2) = {16.809121, 2.014983, 0.000000, 0.722690, 0.722690};
//+
c0 = 0.07226902159662665;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
