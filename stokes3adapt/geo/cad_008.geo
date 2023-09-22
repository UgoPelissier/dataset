//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.997538, -3.299369, 0.000000, 29.911557, 7.617791, 1.000000};
//+
MeshSize {1} = 0.554319;
//+
MeshSize {2} = 0.554319;
//+
MeshSize {3} = 0.434257;
//+
MeshSize {4} = 0.434257;
//+
MeshSize {5} = 3.328325;
//+
MeshSize {6} = 3.328325;
//+
MeshSize {7} = 3.500526;
//+
MeshSize {8} = 3.500526;
//+
Cylinder(2) = {3.389155, 0.970857, 0.000000, 0.000000, 0.000000, 1.000000, 1.292079, 2*Pi};
//+
MeshSize {9} = 0.129208;
//+
MeshSize {10} = 0.129208;
//+
Cylinder(3) = {21.071050, 0.281632, 0.000000, 0.000000, 0.000000, 1.000000, 0.766825, 2*Pi};
//+
MeshSize {11} = 0.076683;
//+
MeshSize {12} = 0.076683;
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
Save "../geo_unrolled/cad_008.geo_unrolled";
