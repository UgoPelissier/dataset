//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.172559, -4.051534, 0.000000, 34.205024, 8.598554, 1.000000};
//+
MeshSize {1} = 0.925751;
//+
MeshSize {2} = 0.925751;
//+
MeshSize {3} = 1.414474;
//+
MeshSize {4} = 1.414474;
//+
MeshSize {5} = 0.925751;
//+
MeshSize {6} = 0.925751;
//+
MeshSize {7} = 3.464537;
//+
MeshSize {8} = 3.464537;
//+
Cylinder(2) = {9.725197, -0.784451, 0.000000, 0.000000, 0.000000, 1.000000, 0.838367, 2*Pi};
//+
MeshSize {9} = 0.083837;
//+
MeshSize {10} = 0.083837;
//+
Cylinder(3) = {20.553871, 2.486934, 0.000000, 0.000000, 0.000000, 1.000000, 1.147305, 2*Pi};
//+
MeshSize {11} = 0.114731;
//+
MeshSize {12} = 0.114731;
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
Save "../geo_unrolled/cad_082.geo_unrolled";
