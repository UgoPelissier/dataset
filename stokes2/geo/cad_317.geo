//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.867189, -3.127698, 0.000000, 34.285508, 7.897431, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {10.936816, 0.053665, 0.000000, 0.635650, 0.635650};
//+
c0 = 0.06356498210170598;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.925327, 2.995753, 0.000000, 0.528948, 0.528948};
//+
c1 = 0.05289481593201857;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
