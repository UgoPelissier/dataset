//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072589, -3.805567, 0.000000, 30.988766, 9.467230, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {13.594814, -0.992987, 0.000000, 0.000000, 0.000000, 1.000000, 1.160723, 2*Pi};
//+
c0 = 0.11607231649072405;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {12.144759, 2.816355, 0.000000, 0.000000, 0.000000, 1.000000, 1.045724, 2*Pi};
//+
c1 = 0.10457244686408225;
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
