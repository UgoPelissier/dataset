//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.450646, -3.863870, 0.000000, 32.606109, 8.960425, 1.000000};
//+
MeshSize {1} = 0.755408;
//+
MeshSize {2} = 0.755408;
//+
MeshSize {3} = 0.602989;
//+
MeshSize {4} = 0.602989;
//+
MeshSize {5} = 2.052683;
//+
MeshSize {6} = 2.052683;
//+
MeshSize {7} = 2.575385;
//+
MeshSize {8} = 2.575385;
//+
Cylinder(2) = {18.695314, -1.214196, 0.000000, 0.000000, 0.000000, 1.000000, 0.816333, 2*Pi};
//+
MeshSize {9} = 0.081633;
//+
MeshSize {10} = 0.081633;
//+
Cylinder(3) = {7.322921, 2.148855, 0.000000, 0.000000, 0.000000, 1.000000, 0.936124, 2*Pi};
//+
MeshSize {11} = 0.093612;
//+
MeshSize {12} = 0.093612;
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
Save "../geo_unrolled/cad_257.geo_unrolled";
