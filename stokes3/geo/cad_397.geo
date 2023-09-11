//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.969542, -3.799357, 0.000000, 30.800824, 8.993960, 1.000000};
//+
MeshSize {1} = 3.208705;
//+
MeshSize {2} = 3.208705;
//+
MeshSize {3} = 1.564669;
//+
MeshSize {4} = 1.564669;
//+
MeshSize {5} = 1.564669;
//+
MeshSize {6} = 1.168796;
//+
MeshSize {7} = 1.168796;
//+
MeshSize {8} = 1.168796;
//+
Cylinder(2) = {20.048611, 1.221840, 0.000000, 0.000000, 0.000000, 1.000000, 1.063984, 2*Pi};
//+
MeshSize {9} = 0.106398;
//+
MeshSize {10} = 0.106398;
//+
Cylinder(3) = {16.630510, 1.254912, 0.000000, 0.000000, 0.000000, 1.000000, 0.809661, 2*Pi};
//+
MeshSize {11} = 0.080966;
//+
MeshSize {12} = 0.080966;
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
