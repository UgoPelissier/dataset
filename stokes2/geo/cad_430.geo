//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.880132, -3.889715, 0.000000, 33.232386, 8.607511, 0.000000};
//+
l = [0.9936392259696043, 0.7085909612235906, 3.4382934307415187, 3.4382934307415187, 3.4382934307415187, 3.4382934307415187, 0.8164102174459984, 0.48415095395450847];
//+
MeshSize {1} = 0.993639;
//+
MeshSize {2} = 0.708591;
//+
MeshSize {3} = 3.438293;
//+
MeshSize {4} = 3.438293;
//+
Disk(2) = {9.339876, 2.402424, 0.000000, 0.606771, 0.606771};
//+
c0 = 0.06067714328434011;
//+
MeshSize {5} = c0;
//+
Disk(3) = {6.302168, 2.259020, 0.000000, 1.111982, 1.111982};
//+
c1 = 0.11119815976690242;
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
