//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.813185, -4.003352, 0.000000, 37.476405, 9.346937, 1.000000};
//+
MeshSize {1} = 1.477324;
//+
MeshSize {2} = 1.477324;
//+
MeshSize {3} = 1.590491;
//+
MeshSize {4} = 1.590491;
//+
MeshSize {5} = 1.162713;
//+
MeshSize {6} = 1.162713;
//+
MeshSize {7} = 1.193330;
//+
MeshSize {8} = 1.193330;
//+
Cylinder(2) = {26.244238, 0.246697, 0.000000, 0.000000, 0.000000, 1.000000, 1.146025, 2*Pi};
//+
MeshSize {9} = 0.114602;
//+
MeshSize {10} = 0.114602;
//+
Cylinder(3) = {16.212056, -1.291484, 0.000000, 0.000000, 0.000000, 1.000000, 0.862598, 2*Pi};
//+
MeshSize {11} = 0.086260;
//+
MeshSize {12} = 0.086260;
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
Save "../geo_unrolled/cad_085.geo_unrolled";
