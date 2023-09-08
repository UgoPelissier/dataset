//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.057165, -4.231722, 0.000000, 34.971339, 9.631800, 0.000000};
//+
l = [0.7078321015393567, 3.5358011426298095, 3.5358011426298095, 0.6682335935547128];
//+
MeshSize {1} = 0.707832;
//+
MeshSize {2} = 3.535801;
//+
MeshSize {3} = 3.535801;
//+
MeshSize {4} = 0.668234;
//+
Disk(2) = {6.509170, 0.915359, 0.000000, 1.175213, 1.175213};
//+
c0 = 0.11752125536040903;
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
