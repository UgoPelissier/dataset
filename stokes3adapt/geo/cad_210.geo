//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.192763, -3.228933, 0.000000, 38.177003, 8.123726, 1.000000};
//+
MeshSize {1} = 0.639780;
//+
MeshSize {2} = 0.639780;
//+
MeshSize {3} = 0.563186;
//+
MeshSize {4} = 0.563186;
//+
MeshSize {5} = 2.731325;
//+
MeshSize {6} = 2.731325;
//+
MeshSize {7} = 2.739253;
//+
MeshSize {8} = 2.739253;
//+
Cylinder(2) = {10.512453, 2.628076, 0.000000, 0.000000, 0.000000, 1.000000, 1.005126, 2*Pi};
//+
MeshSize {9} = 0.100513;
//+
MeshSize {10} = 0.100513;
//+
Cylinder(3) = {14.291463, 0.763984, 0.000000, 0.000000, 0.000000, 1.000000, 0.677584, 2*Pi};
//+
MeshSize {11} = 0.067758;
//+
MeshSize {12} = 0.067758;
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
//+
Save "../geo_unrolled/cad_210.geo_unrolled";
