//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.521300, -3.220106, 0.000000, 32.224675, 7.693708, 1.000000};
//+
MeshSize {1} = 0.813587;
//+
MeshSize {2} = 0.813587;
//+
MeshSize {3} = 0.999104;
//+
MeshSize {4} = 0.999104;
//+
MeshSize {5} = 1.055143;
//+
MeshSize {6} = 1.055143;
//+
MeshSize {7} = 0.986480;
//+
MeshSize {8} = 0.986480;
//+
Cylinder(2) = {9.356447, -1.756357, 0.000000, 0.000000, 0.000000, 1.000000, 0.819710, 2*Pi};
//+
MeshSize {9} = 0.081971;
//+
MeshSize {10} = 0.081971;
//+
Cylinder(3) = {22.724063, 1.588129, 0.000000, 0.000000, 0.000000, 1.000000, 0.564229, 2*Pi};
//+
MeshSize {11} = 0.056423;
//+
MeshSize {12} = 0.056423;
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
Save "../geo_unrolled/cad_031.geo_unrolled";
