//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.757283, -4.695809, 0.000000, 37.804182, 9.742607, 1.000000};
//+
MeshSize {1} = 3.886793;
//+
MeshSize {2} = 3.886793;
//+
MeshSize {3} = 0.765827;
//+
MeshSize {4} = 0.765827;
//+
MeshSize {5} = 3.886793;
//+
MeshSize {6} = 3.886793;
//+
MeshSize {7} = 0.765827;
//+
MeshSize {8} = 0.765827;
//+
Cylinder(2) = {31.889939, 0.148873, 0.000000, 0.000000, 0.000000, 1.000000, 0.586738, 2*Pi};
//+
MeshSize {9} = 0.058674;
//+
MeshSize {10} = 0.058674;
//+
Cylinder(3) = {25.807486, -3.071053, 0.000000, 0.000000, 0.000000, 1.000000, 0.640612, 2*Pi};
//+
MeshSize {11} = 0.064061;
//+
MeshSize {12} = 0.064061;
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
Save "../geo_unrolled/cad_122.geo_unrolled";
