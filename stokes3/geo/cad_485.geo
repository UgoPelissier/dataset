//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.752390, -3.440741, 0.000000, 30.398424, 7.651580, 1.000000};
//+
MeshSize {1} = 1.301185;
//+
MeshSize {2} = 1.301185;
//+
MeshSize {3} = 3.138487;
//+
MeshSize {4} = 3.138487;
//+
MeshSize {5} = 0.663871;
//+
MeshSize {6} = 0.663871;
//+
MeshSize {7} = 3.138487;
//+
MeshSize {8} = 3.138487;
//+
Cylinder(2) = {14.479631, -0.711012, 0.000000, 0.000000, 0.000000, 1.000000, 0.984172, 2*Pi};
//+
MeshSize {9} = 0.098417;
//+
MeshSize {10} = 0.098417;
//+
Cylinder(3) = {7.672947, 0.418598, 0.000000, 0.000000, 0.000000, 1.000000, 1.285214, 2*Pi};
//+
MeshSize {11} = 0.128521;
//+
MeshSize {12} = 0.128521;
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
Save "../geo_unrolled/cad_485.geo_unrolled";
