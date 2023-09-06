//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.161999, -3.885977, 0.000000, 33.006783, 8.228390, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {8.871734, 1.190190, 0.000000, 0.000000, 0.000000, 1.000000, 0.771248, 2*Pi};
//+
c0 = 0.07712480000000001;
//+
Cylinder(3) = {2.655650, -2.740791, 0.000000, 0.000000, 0.000000, 1.000000, 0.603009, 2*Pi};
//+
c1 = 0.060300900000000004;
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
Save "cad_394.msh";
