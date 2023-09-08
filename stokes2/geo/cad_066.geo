//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.378989, -3.948600, 0.000000, 38.130539, 7.954600, 0.000000};
//+
l = [0.9189236755043485, 3.8714373152874124, 3.8714373152874124, 0.7119429084485578];
//+
MeshSize {1} = 0.918924;
//+
MeshSize {2} = 3.871437;
//+
MeshSize {3} = 3.871437;
//+
MeshSize {4} = 0.711943;
//+
Disk(2) = {8.168635, 2.369137, 0.000000, 0.840339, 0.840339};
//+
c0 = 0.08403388431642837;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
