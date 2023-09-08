//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.708966, -3.669185, 0.000000, 38.157569, 8.616575, 0.000000};
//+
l = [0.9149339410950841, 0.9149339410950841, 3.9104589183474965, 3.9104589183474965, 3.9104589183474965, 3.9104589183474965, 1.137487274744874, 1.137487274744874];
//+
MeshSize {1} = 0.914934;
//+
MeshSize {2} = 0.914934;
//+
MeshSize {3} = 3.910459;
//+
MeshSize {4} = 3.910459;
//+
Disk(2) = {10.307889, -2.158100, 0.000000, 0.567795, 0.567795};
//+
c0 = 0.056779478006423384;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.000038, 2.004082, 0.000000, 1.469102, 1.469102};
//+
c1 = 0.14691018251056853;
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
