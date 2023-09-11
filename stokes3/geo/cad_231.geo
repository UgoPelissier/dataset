//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.300736, -4.185850, 0.000000, 37.757025, 9.786853, 1.000000};
//+
l = [0.43810219429170677, 0.43810219429170677, 0.43810219429170677, 3.837106775349692, 3.837106775349692, 3.837106775349692, 3.837106775349692, 0.8728519217313506, 0.8728519217313506, 0.8728519217313506];
//+
MeshSize {1} = 0.438102;
//+
MeshSize {2} = 0.438102;
//+
MeshSize {3} = 0.438102;
//+
MeshSize {4} = 3.837107;
//+
MeshSize {5} = 3.837107;
//+
MeshSize {6} = 3.837107;
//+
MeshSize {7} = 3.837107;
//+
MeshSize {8} = 0.872852;
//+
Cylinder(2) = {5.103270, -2.516606, 0.000000, 0.000000, 0.000000, 1.000000, 0.703337, 2*Pi};
//+
c0 = 0.07033367330600544;
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
