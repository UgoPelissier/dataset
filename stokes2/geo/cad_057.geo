//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.252272, -4.342368, 0.000000, 29.941561, 8.848548, 0.000000};
//+
l = [3.0516253737257593, 0.7460851541032396, 0.6069590814734056, 3.0516253737257593];
//+
MeshSize {1} = 3.051625;
//+
MeshSize {2} = 0.746085;
//+
MeshSize {3} = 0.606959;
//+
MeshSize {4} = 3.051625;
//+
Disk(2) = {23.588420, 1.342808, 0.000000, 1.254233, 1.254233};
//+
c0 = 0.12542332040595264;
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
