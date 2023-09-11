//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.807221, -3.927878, 0.000000, 38.938245, 9.546067, 1.000000};
//+
l = [4.003103694322067, 4.003103694322067, 1.571797810261056, 1.571797810261056, 1.571797810261056, 1.5411226520660015, 1.5411226520660015, 1.5411226520660015, 4.003103694322067, 4.003103694322067];
//+
MeshSize {1} = 4.003104;
//+
MeshSize {2} = 4.003104;
//+
MeshSize {3} = 1.571798;
//+
MeshSize {4} = 1.571798;
//+
MeshSize {5} = 1.571798;
//+
MeshSize {6} = 1.541123;
//+
MeshSize {7} = 1.541123;
//+
MeshSize {8} = 1.541123;
//+
Cylinder(2) = {24.386756, 1.362216, 0.000000, 0.000000, 0.000000, 1.000000, 0.526254, 2*Pi};
//+
c0 = 0.05262538314535834;
//+
MeshSize {9, 10} = c0;
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
