//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.919770, -3.966016, 0.000000, 37.525074, 8.108291, 1.000000};
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
MeshSize {9} = 0.089577;
//+
MeshSize {10} = 0.089577;
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
