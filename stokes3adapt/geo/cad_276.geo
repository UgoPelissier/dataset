//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072386, -4.459426, 0.000000, 39.397769, 9.507356, 1.000000};
//+
MeshSize {1} = 5.008677;
//+
MeshSize {2} = 5.008677;
//+
MeshSize {3} = 4.586344;
//+
MeshSize {4} = 4.586344;
//+
MeshSize {5} = 0.263122;
//+
MeshSize {6} = 0.263122;
//+
MeshSize {7} = 0.364457;
//+
MeshSize {8} = 0.364457;
//+
Cylinder(2) = {22.691150, 1.846251, 0.000000, 0.000000, 0.000000, 1.000000, 1.466055, 2*Pi};
//+
MeshSize {9} = 0.146606;
//+
MeshSize {10} = 0.146606;
//+
Cylinder(3) = {37.940241, -0.391243, 0.000000, 0.000000, 0.000000, 1.000000, 0.960720, 2*Pi};
//+
MeshSize {11} = 0.096072;
//+
MeshSize {12} = 0.096072;
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
Save "../geo_unrolled/cad_276.geo_unrolled";
