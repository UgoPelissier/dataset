//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.575967, -4.604048, 0.000000, 37.788304, 9.482754, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {29.319046, 0.882705, 0.000000, 0.835504, 0.835504};
//+
c0 = 0.08355037276686869;
//+
MeshSize {5} = c0;
//+
Disk(3) = {26.712880, 0.506452, 0.000000, 0.938661, 0.938661};
//+
c1 = 0.09386612120542273;
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
