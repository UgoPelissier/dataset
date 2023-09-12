//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.176174, -2.930047, 0.000000, 30.519902, 7.771862, 1.000000};
//+
MeshSize {1} = 3.094107;
//+
MeshSize {2} = 3.094107;
//+
MeshSize {3} = 0.673457;
//+
MeshSize {4} = 0.673457;
//+
MeshSize {5} = 1.497647;
//+
MeshSize {6} = 1.497647;
//+
MeshSize {7} = 0.673457;
//+
MeshSize {8} = 0.673457;
//+
Cylinder(2) = {24.988654, 2.108843, 0.000000, 0.000000, 0.000000, 1.000000, 0.878911, 2*Pi};
//+
MeshSize {9} = 0.087891;
//+
MeshSize {10} = 0.087891;
//+
Cylinder(3) = {15.172922, 1.244778, 0.000000, 0.000000, 0.000000, 1.000000, 0.590533, 2*Pi};
//+
MeshSize {11} = 0.059053;
//+
MeshSize {12} = 0.059053;
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
Save "../geo_unrolled/cad_354.geo_unrolled";
