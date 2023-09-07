//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.004110, -3.560522, 0.000000, 36.866413, 8.985719, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {3.210534, -0.297644, 0.000000, 0.546140, 0.546140};
//+
c0 = 0.054613977002429086;
//+
MeshSize {5} = c0;
//+
Disk(3) = {19.193973, 1.428588, 0.000000, 0.812481, 0.812481};
//+
c1 = 0.08124808000212927;
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
