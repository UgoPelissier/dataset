//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.276201, -4.275031, 0.000000, 38.458462, 9.466376, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {24.133939, 0.213580, 0.000000, 0.000000, 0.000000, 1.000000, 0.919594, 2*Pi};
//+
c0 = 0.09195940000000001;
//+
Cylinder(3) = {20.747582, -1.477993, 0.000000, 0.000000, 0.000000, 1.000000, 0.910890, 2*Pi};
//+
c1 = 0.091089;
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
Save "cad_314.msh";
