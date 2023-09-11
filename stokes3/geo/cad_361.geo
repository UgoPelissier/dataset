//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.960134, -4.748636, 0.000000, 35.812756, 9.785422, 1.000000};
//+
MeshSize {1} = 3.709696;
//+
MeshSize {2} = 3.709696;
//+
MeshSize {3} = 3.709696;
//+
MeshSize {4} = 3.709696;
//+
MeshSize {5} = 0.940870;
//+
MeshSize {6} = 0.940870;
//+
MeshSize {7} = 0.940870;
//+
MeshSize {8} = 0.453523;
//+
Cylinder(2) = {29.235078, 2.244038, 0.000000, 0.000000, 0.000000, 1.000000, 0.873131, 2*Pi};
//+
MeshSize {9} = 0.087313;
//+
MeshSize {10} = 0.087313;
//+
Cylinder(3) = {34.914576, 0.523757, 0.000000, 0.000000, 0.000000, 1.000000, 1.055070, 2*Pi};
//+
MeshSize {11} = 0.105507;
//+
MeshSize {12} = 0.105507;
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
