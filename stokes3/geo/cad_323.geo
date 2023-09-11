//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.655401, -3.275738, 0.000000, 31.938862, 8.546414, 1.000000};
//+
MeshSize {1} = 0.621288;
//+
MeshSize {2} = 0.621288;
//+
MeshSize {3} = 0.463126;
//+
MeshSize {4} = 0.463126;
//+
MeshSize {5} = 0.621288;
//+
MeshSize {6} = 0.621288;
//+
MeshSize {7} = 3.287318;
//+
MeshSize {8} = 3.287318;
//+
Cylinder(2) = {7.247764, 0.296006, 0.000000, 0.000000, 0.000000, 1.000000, 1.284897, 2*Pi};
//+
MeshSize {9} = 0.128490;
//+
MeshSize {10} = 0.128490;
//+
Cylinder(3) = {29.547563, 1.468859, 0.000000, 0.000000, 0.000000, 1.000000, 1.007315, 2*Pi};
//+
MeshSize {11} = 0.100731;
//+
MeshSize {12} = 0.100731;
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
