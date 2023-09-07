//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.192763, -3.228933, 0.000000, 38.177003, 8.123726, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {10.512453, 2.628076, 0.000000, 0.000000, 0.000000, 1.000000, 1.005126, 2*Pi};
//+
c0 = 0.10051263749371638;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {14.291463, 0.763984, 0.000000, 0.000000, 0.000000, 1.000000, 0.677584, 2*Pi};
//+
c1 = 0.06775836941638617;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
