//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.575879, -4.528194, 0.000000, 33.184674, 9.541236, 1.000000};
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
Cylinder(2) = {19.993912, 0.435358, 0.000000, 0.000000, 0.000000, 1.000000, 1.181713, 2*Pi};
//+
MeshSize {9} = 0.118171;
//+
MeshSize {10} = 0.118171;
//+
Cylinder(3) = {23.914863, -0.587216, 0.000000, 0.000000, 0.000000, 1.000000, 0.791331, 2*Pi};
//+
MeshSize {11} = 0.079133;
//+
MeshSize {12} = 0.079133;
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
Save "../geo_unrolled/cad_149.geo_unrolled";
