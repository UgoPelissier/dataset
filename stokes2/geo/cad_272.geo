//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.711395, -3.766811, 0.000000, 36.903341, 9.190586, 0.000000};
//+
l = [1.7488531671968925, 1.4103291733796564, 3.789439370741335, 3.789439370741335, 3.789439370741335, 3.789439370741335, 1.7547281763763594, 1.4850814721467396];
//+
MeshSize {1} = 1.748853;
//+
MeshSize {2} = 1.410329;
//+
MeshSize {3} = 3.789439;
//+
MeshSize {4} = 3.789439;
//+
Disk(2) = {18.410861, 0.711586, 0.000000, 0.768717, 0.768717};
//+
c0 = 0.0768717152087486;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.580967, -0.441224, 0.000000, 1.133628, 1.133628};
//+
c1 = 0.11336277633502978;
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
