//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.791067, -3.711682, 0.000000, 38.706472, 8.446697, 1.000000};
//+
MeshSize {1} = 1.403331;
//+
MeshSize {2} = 1.403331;
//+
MeshSize {3} = 1.403331;
//+
MeshSize {4} = 1.403331;
//+
MeshSize {5} = 1.403331;
//+
MeshSize {6} = 1.403331;
//+
MeshSize {7} = 3.972269;
//+
MeshSize {8} = 3.972269;
//+
Cylinder(2) = {15.033040, 2.265914, 0.000000, 0.000000, 0.000000, 1.000000, 1.412253, 2*Pi};
//+
MeshSize {9} = 0.141225;
//+
MeshSize {10} = 0.141225;
//+
Cylinder(3) = {22.335526, 1.347504, 0.000000, 0.000000, 0.000000, 1.000000, 0.650090, 2*Pi};
//+
MeshSize {11} = 0.065009;
//+
MeshSize {12} = 0.065009;
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
