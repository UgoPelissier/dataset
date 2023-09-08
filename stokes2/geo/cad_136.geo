//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.919770, -3.966016, 0.000000, 37.525074, 8.108291, 0.000000};
//+
l = [3.8658014638358082, 1.5448371027312557, 1.5395617470070055, 3.8658014638358082];
//+
MeshSize {1} = 3.865801;
//+
MeshSize {2} = 1.544837;
//+
MeshSize {3} = 1.539562;
//+
MeshSize {4} = 3.865801;
//+
Disk(2) = {22.639065, 0.194295, 0.000000, 0.895767, 0.895767};
//+
c0 = 0.08957666968593331;
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
