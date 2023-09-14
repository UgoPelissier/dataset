//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.530557, -3.420258, 0.000000, 35.523711, 7.747946, 1.000000};
//+
MeshSize {1} = 1.546549;
//+
MeshSize {2} = 1.546549;
//+
MeshSize {3} = 1.598982;
//+
MeshSize {4} = 1.598982;
//+
MeshSize {5} = 0.906850;
//+
MeshSize {6} = 0.906850;
//+
MeshSize {7} = 0.801617;
//+
MeshSize {8} = 0.801617;
//+
Cylinder(2) = {27.724388, 1.711056, 0.000000, 0.000000, 0.000000, 1.000000, 0.715023, 2*Pi};
//+
MeshSize {9} = 0.071502;
//+
MeshSize {10} = 0.071502;
//+
Cylinder(3) = {16.350571, -0.650908, 0.000000, 0.000000, 0.000000, 1.000000, 0.595086, 2*Pi};
//+
MeshSize {11} = 0.059509;
//+
MeshSize {12} = 0.059509;
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
Save "../geo_unrolled/cad_068.geo_unrolled";
