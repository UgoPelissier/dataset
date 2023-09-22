//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.041182, -3.838072, 0.000000, 31.454618, 8.756004, 1.000000};
//+
MeshSize {1} = 0.844183;
//+
MeshSize {2} = 0.844183;
//+
MeshSize {3} = 0.893155;
//+
MeshSize {4} = 0.893155;
//+
MeshSize {5} = 1.239479;
//+
MeshSize {6} = 1.239479;
//+
MeshSize {7} = 1.678689;
//+
MeshSize {8} = 1.678689;
//+
Cylinder(2) = {12.374155, -0.476184, 0.000000, 0.000000, 0.000000, 1.000000, 1.095132, 2*Pi};
//+
MeshSize {9} = 0.109513;
//+
MeshSize {10} = 0.109513;
//+
Cylinder(3) = {15.896855, -2.433419, 0.000000, 0.000000, 0.000000, 1.000000, 0.789783, 2*Pi};
//+
MeshSize {11} = 0.078978;
//+
MeshSize {12} = 0.078978;
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
Save "../geo_unrolled/cad_311.geo_unrolled";
