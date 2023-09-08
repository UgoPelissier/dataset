//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.807221, -3.927878, 0.000000, 38.938245, 9.546067, 0.000000};
//+
l = [4.003103694322067, 1.571797810261056, 1.5411226520660015, 4.003103694322067];
//+
MeshSize {1} = 4.003104;
//+
MeshSize {2} = 1.571798;
//+
MeshSize {3} = 1.541123;
//+
MeshSize {4} = 4.003104;
//+
Disk(2) = {24.386756, 1.362216, 0.000000, 0.526254, 0.526254};
//+
c0 = 0.05262538314535834;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
