//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.286524, -3.327757, 0.000000, 31.161960, 7.918939, 0.000000};
//+
l = [3.169675859074245, 3.169675859074245, 0.525057932071235, 0.525057932071235, 0.7302447610999334, 0.7302447610999334, 3.169675859074245, 3.169675859074245];
//+
MeshSize {1} = 3.169676;
//+
MeshSize {2} = 3.169676;
//+
MeshSize {3} = 0.525058;
//+
MeshSize {4} = 0.525058;
//+
Disk(2) = {25.401479, -1.287712, 0.000000, 1.131273, 1.131273};
//+
c0 = 0.11312734083258369;
//+
MeshSize {5} = c0;
//+
Disk(3) = {17.977135, 2.762924, 0.000000, 0.571344, 0.571344};
//+
c1 = 0.05713440781765575;
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
