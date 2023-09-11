//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.248656, -4.087143, 0.000000, 34.237479, 8.554704, 1.000000};
//+
MeshSize {1} = 0.813440;
//+
MeshSize {2} = 0.813440;
//+
MeshSize {3} = 1.003200;
//+
MeshSize {4} = 1.003200;
//+
MeshSize {5} = 3.475039;
//+
MeshSize {6} = 3.475039;
//+
MeshSize {7} = 3.475039;
//+
MeshSize {8} = 3.475039;
//+
Cylinder(2) = {9.605946, -2.140332, 0.000000, 0.000000, 0.000000, 1.000000, 1.423266, 2*Pi};
//+
MeshSize {9} = 0.142327;
//+
MeshSize {10} = 0.142327;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_022.geo_unrolled";
