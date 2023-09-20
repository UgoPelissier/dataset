//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.822331, -4.438943, 0.000000, 38.785545, 9.088963, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {32.823336, 1.884221, 0.000000, 0.000000, 0.000000, 1.000000, 0.935487, 2*Pi};
//+
MeshSize {9} = 0.093549;
//+
MeshSize {10} = 0.093549;
//+
Cylinder(3) = {17.252180, 2.099789, 0.000000, 0.000000, 0.000000, 1.000000, 0.768396, 2*Pi};
//+
MeshSize {11} = 0.076840;
//+
MeshSize {12} = 0.076840;
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
Save "../geo_unrolled/cad_037.geo_unrolled";
