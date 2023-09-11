//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.276968, -4.415761, 0.000000, 35.256999, 9.000020, 1.000000};
//+
MeshSize {1} = 3.581777;
//+
MeshSize {2} = 3.581777;
//+
MeshSize {3} = 0.715675;
//+
MeshSize {4} = 0.715675;
//+
MeshSize {5} = 3.581777;
//+
MeshSize {6} = 3.581777;
//+
MeshSize {7} = 1.437889;
//+
MeshSize {8} = 1.437889;
//+
Cylinder(2) = {21.590193, 2.510732, 0.000000, 0.000000, 0.000000, 1.000000, 1.190476, 2*Pi};
//+
MeshSize {9} = 0.119048;
//+
MeshSize {10} = 0.119048;
//+
Cylinder(3) = {30.128969, 1.425651, 0.000000, 0.000000, 0.000000, 1.000000, 0.801649, 2*Pi};
//+
MeshSize {11} = 0.080165;
//+
MeshSize {12} = 0.080165;
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
