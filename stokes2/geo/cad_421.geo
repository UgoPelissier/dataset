//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.134871, -4.006014, 0.000000, 34.743740, 9.130621, 0.000000};
//+
l = [0.7167305971644011, 0.7167305971644011, 3.517612209381699, 3.517612209381699, 3.517612209381699, 3.517612209381699, 0.6605410336289174, 0.6605410336289174];
//+
MeshSize {1} = 0.716731;
//+
MeshSize {2} = 0.716731;
//+
MeshSize {3} = 3.517612;
//+
MeshSize {4} = 3.517612;
//+
Disk(2) = {6.839671, 1.059123, 0.000000, 1.235668, 1.235668};
//+
c0 = 0.12356677541453226;
//+
MeshSize {5} = c0;
//+
Disk(3) = {11.280149, 3.872644, 0.000000, 0.589595, 0.589595};
//+
c1 = 0.05895946481267353;
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
