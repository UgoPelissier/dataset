//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.457046, -3.103287, 0.000000, 36.710833, 7.769414, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {21.884860, 2.114409, 0.000000, 0.950505, 0.950505};
//+
c0 = 0.09505045969589641;
//+
MeshSize {5} = c0;
//+
Disk(3) = {18.540403, 0.235913, 0.000000, 0.548572, 0.548572};
//+
c1 = 0.054857160563190524;
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
