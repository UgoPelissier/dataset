//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.407599, -3.465932, 0.000000, 33.750143, 8.017086, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {14.312821, 1.984354, 0.000000, 0.000000, 0.000000, 1.000000, 1.046132, 2*Pi};
//+
MeshSize {9} = 0.104613;
//+
MeshSize {10} = 0.104613;
//+
Cylinder(3) = {20.605746, -2.240465, 0.000000, 0.000000, 0.000000, 1.000000, 0.719422, 2*Pi};
//+
MeshSize {11} = 0.071942;
//+
MeshSize {12} = 0.071942;
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
Save "../geo_unrolled/cad_032.geo_unrolled";
