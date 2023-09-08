//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.300736, -4.185850, 0.000000, 37.757025, 9.786853, 0.000000};
//+
l = [0.43810219429170677, 3.837106775349692, 3.837106775349692, 0.8728519217313506];
//+
MeshSize {1} = 0.438102;
//+
MeshSize {2} = 3.837107;
//+
MeshSize {3} = 3.837107;
//+
MeshSize {4} = 0.872852;
//+
Disk(2) = {5.103270, -2.516606, 0.000000, 0.703337, 0.703337};
//+
c0 = 0.07033367330600544;
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
