//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.546014, -3.910419, 0.000000, 31.204878, 9.447856, 1.000000};
//+
MeshSize {1} = 0.902608;
//+
MeshSize {2} = 0.902608;
//+
MeshSize {3} = 0.900466;
//+
MeshSize {4} = 0.900466;
//+
MeshSize {5} = 1.389385;
//+
MeshSize {6} = 1.389385;
//+
MeshSize {7} = 1.263466;
//+
MeshSize {8} = 1.263466;
//+
Cylinder(2) = {14.752191, 1.846010, 0.000000, 0.000000, 0.000000, 1.000000, 1.131736, 2*Pi};
//+
MeshSize {9} = 0.113174;
//+
MeshSize {10} = 0.113174;
//+
Cylinder(3) = {14.531735, -1.951525, 0.000000, 0.000000, 0.000000, 1.000000, 0.543806, 2*Pi};
//+
MeshSize {11} = 0.054381;
//+
MeshSize {12} = 0.054381;
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
Save "../geo_unrolled/cad_094.geo_unrolled";
