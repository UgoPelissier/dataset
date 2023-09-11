//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.589266, -3.947844, 0.000000, 29.475722, 9.514548, 1.000000};
//+
MeshSize {1} = 3.043904;
//+
MeshSize {2} = 3.043904;
//+
MeshSize {3} = 3.043904;
//+
MeshSize {4} = 3.043904;
//+
MeshSize {5} = 0.873911;
//+
MeshSize {6} = 0.873911;
//+
MeshSize {7} = 1.085904;
//+
MeshSize {8} = 1.085904;
//+
Cylinder(2) = {20.989552, -1.519944, 0.000000, 0.000000, 0.000000, 1.000000, 0.655479, 2*Pi};
//+
MeshSize {9} = 0.065548;
//+
MeshSize {10} = 0.065548;
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
Save "../geo_unrolled/cad_002.geo_unrolled";
