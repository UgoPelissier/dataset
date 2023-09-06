//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.615993, -4.134027, 0.000000, 31.140298, 8.326288, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {10.731621, 1.436059, 0.000000, 0.000000, 0.000000, 1.000000, 1.416163, 2*Pi};
//+
c0 = 0.1416163;
//+
Cylinder(3) = {25.317842, 1.212742, 0.000000, 0.000000, 0.000000, 1.000000, 0.981496, 2*Pi};
//+
c1 = 0.0981496;
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
Save "cad_447.msh";
