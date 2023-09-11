//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.630617, -4.181728, 0.000000, 30.218008, 9.081978, 1.000000};
//+
MeshSize {1} = 3.118106;
//+
MeshSize {2} = 3.118106;
//+
MeshSize {3} = 0.901111;
//+
MeshSize {4} = 0.901111;
//+
MeshSize {5} = 0.392784;
//+
MeshSize {6} = 0.392784;
//+
MeshSize {7} = 0.901111;
//+
MeshSize {8} = 0.901111;
//+
Cylinder(2) = {22.202959, 0.844128, 0.000000, 0.000000, 0.000000, 1.000000, 0.989233, 2*Pi};
//+
MeshSize {9} = 0.098923;
//+
MeshSize {10} = 0.098923;
//+
Cylinder(3) = {1.943236, 0.368293, 0.000000, 0.000000, 0.000000, 1.000000, 0.807731, 2*Pi};
//+
MeshSize {11} = 0.080773;
//+
MeshSize {12} = 0.080773;
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
