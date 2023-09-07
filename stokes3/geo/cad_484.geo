//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.630617, -4.181728, 0.000000, 30.218008, 9.081978, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {22.202959, 0.844128, 0.000000, 0.000000, 0.000000, 1.000000, 0.989233, 2*Pi};
//+
c0 = 0.09892325504777397;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {1.943236, 0.368293, 0.000000, 0.000000, 0.000000, 1.000000, 0.807731, 2*Pi};
//+
c1 = 0.08077308796322655;
//+
MeshSize {11, 12} = c1;
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
