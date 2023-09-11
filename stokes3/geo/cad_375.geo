//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.149561, -4.422137, 0.000000, 34.609131, 9.036870, 1.000000};
//+
MeshSize {1} = 0.517028;
//+
MeshSize {2} = 0.517028;
//+
MeshSize {3} = 0.870088;
//+
MeshSize {4} = 0.870088;
//+
MeshSize {5} = 0.517028;
//+
MeshSize {6} = 0.517028;
//+
MeshSize {7} = 3.505115;
//+
MeshSize {8} = 3.505115;
//+
Cylinder(2) = {4.084717, -0.160486, 0.000000, 0.000000, 0.000000, 1.000000, 0.630329, 2*Pi};
//+
MeshSize {9} = 0.063033;
//+
MeshSize {10} = 0.063033;
//+
Cylinder(3) = {26.933482, 1.348588, 0.000000, 0.000000, 0.000000, 1.000000, 1.022044, 2*Pi};
//+
MeshSize {11} = 0.102204;
//+
MeshSize {12} = 0.102204;
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
Save "../geo_unrolled/cad_375.geo_unrolled";
