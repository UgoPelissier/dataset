//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.057165, -4.231722, 0.000000, 34.971339, 9.631800, 1.000000};
//+
l = [0.7078321015393567, 0.7078321015393567, 0.7078321015393567, 3.5358011426298095, 3.5358011426298095, 3.5358011426298095, 3.5358011426298095, 0.6682335935547128, 0.6682335935547128, 0.6682335935547128];
//+
MeshSize {1} = 0.707832;
//+
MeshSize {2} = 0.707832;
//+
MeshSize {3} = 0.707832;
//+
MeshSize {4} = 3.535801;
//+
MeshSize {5} = 3.535801;
//+
MeshSize {6} = 3.535801;
//+
MeshSize {7} = 3.535801;
//+
MeshSize {8} = 0.668234;
//+
Cylinder(2) = {6.509170, 0.915359, 0.000000, 0.000000, 0.000000, 1.000000, 1.175213, 2*Pi};
//+
c0 = 0.11752125536040903;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
