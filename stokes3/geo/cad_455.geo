//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.053800, -4.068686, 0.000000, 31.736030, 8.990304, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {18.843620, 3.022310, 0.000000, 0.000000, 0.000000, 1.000000, 1.199365, 2*Pi};
//+
c0 = 0.1199365;
//+
Cylinder(3) = {19.592560, -1.686215, 0.000000, 0.000000, 0.000000, 1.000000, 1.317442, 2*Pi};
//+
c1 = 0.1317442;
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
Save "cad_455.msh";
