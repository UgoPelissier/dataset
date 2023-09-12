//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.659649, -3.913818, 0.000000, 36.582219, 8.356678, 1.000000};
//+
MeshSize {1} = 1.615743;
//+
MeshSize {2} = 1.615743;
//+
MeshSize {3} = 0.563365;
//+
MeshSize {4} = 0.563365;
//+
MeshSize {5} = 1.615743;
//+
MeshSize {6} = 1.615743;
//+
MeshSize {7} = 3.747553;
//+
MeshSize {8} = 3.747553;
//+
Cylinder(2) = {16.888075, 0.757082, 0.000000, 0.000000, 0.000000, 1.000000, 0.729814, 2*Pi};
//+
MeshSize {9} = 0.072981;
//+
MeshSize {10} = 0.072981;
//+
Cylinder(3) = {32.012800, 0.036431, 0.000000, 0.000000, 0.000000, 1.000000, 0.919795, 2*Pi};
//+
MeshSize {11} = 0.091980;
//+
MeshSize {12} = 0.091980;
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
Save "../geo_unrolled/cad_266.geo_unrolled";
