//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.617965, -3.707332, 0.000000, 35.929614, 7.520835, 1.000000};
//+
MeshSize {1} = 1.237858;
//+
MeshSize {2} = 1.237858;
//+
MeshSize {3} = 1.347674;
//+
MeshSize {4} = 1.347674;
//+
MeshSize {5} = 1.237858;
//+
MeshSize {6} = 1.237858;
//+
MeshSize {7} = 3.674053;
//+
MeshSize {8} = 3.674053;
//+
Cylinder(2) = {14.204039, -1.719937, 0.000000, 0.000000, 0.000000, 1.000000, 1.352083, 2*Pi};
//+
MeshSize {9} = 0.135208;
//+
MeshSize {10} = 0.135208;
//+
Cylinder(3) = {24.125070, 2.739707, 0.000000, 0.000000, 0.000000, 1.000000, 0.519078, 2*Pi};
//+
MeshSize {11} = 0.051908;
//+
MeshSize {12} = 0.051908;
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
//+
Save "../geo_unrolled/cad_425.geo_unrolled";
