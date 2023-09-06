//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.201187, -3.853089, 0.000000, 37.700768, 8.269432, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {19.204527, -1.456050, 0.000000, 0.000000, 0.000000, 1.000000, 0.506131, 2*Pi};
//+
c0 = 0.0506131;
//+
Cylinder(3) = {25.994517, -1.311849, 0.000000, 0.000000, 0.000000, 1.000000, 1.224397, 2*Pi};
//+
c1 = 0.1224397;
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
Save "cad_446.msh";
