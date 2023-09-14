//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.332964, -3.964430, 0.000000, 29.820373, 9.842899, 1.000000};
//+
MeshSize {1} = 0.888992;
//+
MeshSize {2} = 0.888992;
//+
MeshSize {3} = 0.505086;
//+
MeshSize {4} = 0.505086;
//+
MeshSize {5} = 0.628772;
//+
MeshSize {6} = 0.628772;
//+
MeshSize {7} = 0.874212;
//+
MeshSize {8} = 0.874212;
//+
Cylinder(2) = {6.166754, 4.086048, 0.000000, 0.000000, 0.000000, 1.000000, 1.052079, 2*Pi};
//+
MeshSize {9} = 0.105208;
//+
MeshSize {10} = 0.105208;
//+
Cylinder(3) = {23.384331, -1.174634, 0.000000, 0.000000, 0.000000, 1.000000, 1.033650, 2*Pi};
//+
MeshSize {11} = 0.103365;
//+
MeshSize {12} = 0.103365;
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
Save "../geo_unrolled/cad_134.geo_unrolled";
