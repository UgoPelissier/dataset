//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.709149, -3.107864, 0.000000, 35.070722, 7.794572, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {11.302923, -1.073548, 0.000000, 0.000000, 0.000000, 1.000000, 0.654779, 2*Pi};
//+
c0 = 0.0654779;
//+
Cylinder(3) = {15.154978, -1.047247, 0.000000, 0.000000, 0.000000, 1.000000, 0.775561, 2*Pi};
//+
c1 = 0.0775561;
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
Save "cad_378.msh";
