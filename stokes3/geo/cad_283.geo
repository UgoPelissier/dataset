//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.698676, -3.092424, 0.000000, 37.766005, 7.644765, 1.000000};
//+
MeshSize {1} = 0.273002;
//+
MeshSize {2} = 0.273002;
//+
MeshSize {3} = 0.273002;
//+
MeshSize {4} = 0.273002;
//+
MeshSize {5} = 0.273002;
//+
MeshSize {6} = 0.273002;
//+
MeshSize {7} = 3.865414;
//+
MeshSize {8} = 3.865414;
//+
Cylinder(2) = {3.316148, -0.500858, 0.000000, 0.000000, 0.000000, 1.000000, 0.953372, 2*Pi};
//+
MeshSize {9} = 0.095337;
//+
MeshSize {10} = 0.095337;
//+
Cylinder(3) = {20.117235, 2.163370, 0.000000, 0.000000, 0.000000, 1.000000, 1.220766, 2*Pi};
//+
MeshSize {11} = 0.122077;
//+
MeshSize {12} = 0.122077;
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
