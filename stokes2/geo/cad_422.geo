//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.671748, -3.727382, 0.000000, 32.811331, 8.301846, 0.000000};
//+
l = [3.3739394063741814, 3.3739394063741814, 0.9880655450687285, 0.7237499147348245, 0.7664734764971064, 0.42806659550472104, 3.3739394063741814, 3.3739394063741814];
//+
MeshSize {1} = 3.373939;
//+
MeshSize {2} = 3.373939;
//+
MeshSize {3} = 0.988066;
//+
MeshSize {4} = 0.723750;
//+
Disk(2) = {25.371260, 2.928594, 0.000000, 0.612372, 0.612372};
//+
c0 = 0.061237174078510426;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.088503, 2.657703, 0.000000, 0.513733, 0.513733};
//+
c1 = 0.05137332926934314;
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
