//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.823643, -3.572170, 0.000000, 29.582889, 7.675970, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {2.953060, 1.728413, 0.000000, 1.031661, 1.031661};
//+
c0 = 0.10316610514024727;
//+
MeshSize {5} = c0;
//+
Disk(3) = {5.760834, 0.201049, 0.000000, 0.748763, 0.748763};
//+
c1 = 0.07487630290540134;
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
