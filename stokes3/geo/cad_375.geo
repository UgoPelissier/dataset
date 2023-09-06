//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.149561, -4.422136, 0.000000, 34.609131, 9.036870, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {4.084717, -0.160486, 0.000000, 0.000000, 0.000000, 1.000000, 0.630329, 2*Pi};
//+
c0 = 0.0630329;
//+
Cylinder(3) = {26.933482, 1.348588, 0.000000, 0.000000, 0.000000, 1.000000, 1.022044, 2*Pi};
//+
c1 = 0.1022044;
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
Save "cad_375.msh";
