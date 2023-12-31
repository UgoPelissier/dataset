//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.791067, -3.711682, 0.000000, 38.706472, 8.446697, 1.000000};
//+
MeshSize {1} = 0.917801;
//+
MeshSize {2} = 0.917801;
//+
MeshSize {3} = 0.852978;
//+
MeshSize {4} = 0.852978;
//+
MeshSize {5} = 1.433950;
//+
MeshSize {6} = 1.433950;
//+
MeshSize {7} = 1.336677;
//+
MeshSize {8} = 1.336677;
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
//+
Save "../geo_unrolled/cad_330.geo_unrolled";
