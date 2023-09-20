//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.753594, -3.845794, 0.000000, 37.386668, 7.756200, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {33.107097, 1.857552, 0.000000, 0.000000, 0.000000, 1.000000, 1.364841, 2*Pi};
//+
MeshSize {9} = 0.136484;
//+
MeshSize {10} = 0.136484;
//+
Cylinder(3) = {28.315816, 0.475227, 0.000000, 0.000000, 0.000000, 1.000000, 0.737595, 2*Pi};
//+
MeshSize {11} = 0.073760;
//+
MeshSize {12} = 0.073760;
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
Mesh 2;
//+
Save "../geo_unrolled/cad_242.geo_unrolled";
