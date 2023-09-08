//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.508825, -4.011651, 0.000000, 38.120460, 8.111379, 0.000000};
//+
l = [1.732777748049153, 1.732777748049153, 3.884160490345628, 0.5908266822999616, 3.884160490345628, 0.30381644503008354, 1.777046225783943, 1.777046225783943];
//+
MeshSize {1} = 1.732778;
//+
MeshSize {2} = 1.732778;
//+
MeshSize {3} = 3.884160;
//+
MeshSize {4} = 0.590827;
//+
Disk(2) = {18.223929, -0.949198, 0.000000, 0.650085, 0.650085};
//+
c0 = 0.06500846682411501;
//+
MeshSize {5} = c0;
//+
Disk(3) = {35.305145, 1.952132, 0.000000, 0.919369, 0.919369};
//+
c1 = 0.09193693043627986;
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
