//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.693313, -3.448072, 0.000000, 31.229328, 8.116298, 1.000000};
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
Cylinder(2) = {9.500643, -1.712505, 0.000000, 0.000000, 0.000000, 1.000000, 0.707278, 2*Pi};
//+
MeshSize {9} = 0.070728;
//+
MeshSize {10} = 0.070728;
//+
Cylinder(3) = {22.505088, -1.484952, 0.000000, 0.000000, 0.000000, 1.000000, 0.848803, 2*Pi};
//+
MeshSize {11} = 0.084880;
//+
MeshSize {12} = 0.084880;
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
Save "../geo_unrolled/cad_117.geo_unrolled";
