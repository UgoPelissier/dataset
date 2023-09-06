//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.332217, -3.541735, 0.000000, 37.708548, 8.323854, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {12.733622, 2.625972, 0.000000, 0.000000, 0.000000, 1.000000, 1.359508, 2*Pi};
//+
c0 = 0.1359508;
//+
Cylinder(3) = {26.436725, -0.074854, 0.000000, 0.000000, 0.000000, 1.000000, 1.075879, 2*Pi};
//+
c1 = 0.10758790000000001;
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
Save "cad_254.msh";
