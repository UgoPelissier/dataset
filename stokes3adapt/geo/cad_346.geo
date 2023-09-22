//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.318485, -3.962528, 0.000000, 36.725052, 8.208169, 1.000000};
//+
MeshSize {1} = 0.761662;
//+
MeshSize {2} = 0.761662;
//+
MeshSize {3} = 0.785854;
//+
MeshSize {4} = 0.785854;
//+
MeshSize {5} = 1.920376;
//+
MeshSize {6} = 1.920376;
//+
MeshSize {7} = 1.769409;
//+
MeshSize {8} = 1.769409;
//+
Cylinder(2) = {12.548087, -0.462550, 0.000000, 0.000000, 0.000000, 1.000000, 0.630074, 2*Pi};
//+
MeshSize {9} = 0.063007;
//+
MeshSize {10} = 0.063007;
//+
Cylinder(3) = {17.437711, 1.440500, 0.000000, 0.000000, 0.000000, 1.000000, 0.605927, 2*Pi};
//+
MeshSize {11} = 0.060593;
//+
MeshSize {12} = 0.060593;
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
Save "../geo_unrolled/cad_346.geo_unrolled";
