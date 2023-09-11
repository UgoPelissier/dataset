//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.653534, -4.073803, 0.000000, 31.131202, 8.843146, 1.000000};
//+
l = [3.209080506588801, 3.209080506588801, 1.5443397110411892, 1.5443397110411892, 1.5443397110411892, 1.4504113891294574, 1.4504113891294574, 1.4504113891294574, 1.5666009453895364, 1.5666009453895364, 1.5666009453895364];
//+
MeshSize {1} = 3.209081;
//+
MeshSize {2} = 3.209081;
//+
MeshSize {3} = 1.544340;
//+
MeshSize {4} = 1.544340;
//+
MeshSize {5} = 1.544340;
//+
MeshSize {6} = 1.450411;
//+
MeshSize {7} = 1.450411;
//+
MeshSize {8} = 1.450411;
//+
Cylinder(2) = {16.809121, 2.014983, 0.000000, 0.000000, 0.000000, 1.000000, 0.722690, 2*Pi};
//+
c0 = 0.07226902159662665;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
