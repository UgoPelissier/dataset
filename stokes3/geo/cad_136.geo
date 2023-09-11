//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.919770, -3.966016, 0.000000, 37.525074, 8.108291, 1.000000};
//+
l = [3.8658014638358082, 3.8658014638358082, 1.5448371027312557, 1.5448371027312557, 1.5448371027312557, 1.5395617470070055, 1.5395617470070055, 1.5395617470070055, 3.8658014638358082, 3.8658014638358082];
//+
MeshSize {1} = 3.865801;
//+
MeshSize {2} = 3.865801;
//+
MeshSize {3} = 1.544837;
//+
MeshSize {4} = 1.544837;
//+
MeshSize {5} = 1.544837;
//+
MeshSize {6} = 1.539562;
//+
MeshSize {7} = 1.539562;
//+
MeshSize {8} = 1.539562;
//+
Cylinder(2) = {22.639065, 0.194295, 0.000000, 0.000000, 0.000000, 1.000000, 0.895767, 2*Pi};
//+
c0 = 0.08957666968593331;
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
