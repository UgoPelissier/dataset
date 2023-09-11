//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.026670, -3.991466, 0.000000, 34.993401, 8.089445, 1.000000};
//+
MeshSize {1} = 3.525287;
//+
MeshSize {2} = 3.525287;
//+
MeshSize {3} = 0.752527;
//+
MeshSize {4} = 0.752527;
//+
MeshSize {5} = 0.752527;
//+
MeshSize {6} = 0.583052;
//+
MeshSize {7} = 0.583052;
//+
MeshSize {8} = 0.583052;
//+
Cylinder(2) = {29.058310, 1.586114, 0.000000, 0.000000, 0.000000, 1.000000, 0.638793, 2*Pi};
//+
MeshSize {9} = 0.063879;
//+
MeshSize {10} = 0.063879;
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
