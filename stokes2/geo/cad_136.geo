//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.919770, -3.966016, 0.000000, 37.525074, 8.108291, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
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
