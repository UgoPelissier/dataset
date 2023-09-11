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
MeshSize {3} = 1.010135;
//+
MeshSize {4} = 1.010135;
//+
MeshSize {5} = 3.464537;
//+
MeshSize {6} = 3.464537;
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
