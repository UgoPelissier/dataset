//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.072589, -3.805567, 0.000000, 30.988766, 9.467230, 0.000000};
//+
l = [1.2650908757009294, 1.2650908757009294, 3.1419976292224456, 3.1419976292224456, 3.1419976292224456, 3.1419976292224456, 1.3910273111211544, 1.1357220876119922];
//+
MeshSize {1} = 1.265091;
//+
MeshSize {2} = 1.265091;
//+
MeshSize {3} = 3.141998;
//+
MeshSize {4} = 3.141998;
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
