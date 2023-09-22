//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.256447, -3.290716, 0.000000, 33.802213, 7.783896, 1.000000};
//+
MeshSize {1} = 4.205128;
//+
MeshSize {2} = 4.205128;
//+
MeshSize {3} = 4.260490;
//+
MeshSize {4} = 4.260490;
//+
MeshSize {5} = 0.309821;
//+
MeshSize {6} = 0.309821;
//+
MeshSize {7} = 0.454957;
//+
MeshSize {8} = 0.454957;
//+
Cylinder(2) = {15.808657, 0.465672, 0.000000, 0.000000, 0.000000, 1.000000, 0.936133, 2*Pi};
//+
MeshSize {9} = 0.093613;
//+
MeshSize {10} = 0.093613;
//+
Cylinder(3) = {32.825289, -0.110205, 0.000000, 0.000000, 0.000000, 1.000000, 0.519909, 2*Pi};
//+
MeshSize {11} = 0.051991;
//+
MeshSize {12} = 0.051991;
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
Save "../geo_unrolled/cad_429.geo_unrolled";
