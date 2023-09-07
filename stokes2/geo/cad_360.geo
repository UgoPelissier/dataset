//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.072589, -3.805567, 0.000000, 30.988766, 9.467230, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {13.594814, -0.992987, 0.000000, 1.160723, 1.160723};
//+
c0 = 0.11607231649072405;
//+
MeshSize {5} = c0;
//+
Disk(3) = {12.144759, 2.816355, 0.000000, 1.045724, 1.045724};
//+
c1 = 0.10457244686408225;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
