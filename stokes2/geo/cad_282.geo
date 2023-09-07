//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.536565, -3.521337, 0.000000, 32.238113, 8.274767, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {17.580015, -0.904171, 0.000000, 1.134294, 1.134294};
//+
c0 = 0.11342942473532568;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.351336, 1.498194, 0.000000, 0.566115, 0.566115};
//+
c1 = 0.056611508362121504;
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
