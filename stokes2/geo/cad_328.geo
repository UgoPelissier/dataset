//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.383316, -4.178651, 0.000000, 31.610826, 8.432754, 0.000000};
//+
l = [0.6922476077275284, 0.3832616445368615, 3.227077606831462, 3.227077606831462, 3.227077606831462, 3.227077606831462, 0.5220571551742835, 0.5220571551742835];
//+
MeshSize {1} = 0.692248;
//+
MeshSize {2} = 0.383262;
//+
MeshSize {3} = 3.227078;
//+
MeshSize {4} = 3.227078;
//+
Disk(2) = {6.097338, 1.490474, 0.000000, 1.126687, 1.126687};
//+
c0 = 0.11266869286716226;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.125030, -0.981990, 0.000000, 1.088671, 1.088671};
//+
c1 = 0.10886706881680719;
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
