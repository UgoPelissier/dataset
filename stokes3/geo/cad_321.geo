//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.995686, -3.940511, 0.000000, 30.455838, 9.832575, 1.000000};
//+
MeshSize {1} = 3.183345;
//+
MeshSize {2} = 3.183345;
//+
MeshSize {3} = 3.183345;
//+
MeshSize {4} = 3.183345;
//+
MeshSize {5} = 0.231929;
//+
MeshSize {6} = 0.231929;
//+
MeshSize {7} = 0.399963;
//+
MeshSize {8} = 0.399963;
//+
Cylinder(2) = {28.844574, -1.794482, 0.000000, 0.000000, 0.000000, 1.000000, 1.057340, 2*Pi};
//+
MeshSize {9} = 0.105734;
//+
MeshSize {10} = 0.105734;
//+
Cylinder(3) = {27.665959, 2.232777, 0.000000, 0.000000, 0.000000, 1.000000, 1.265435, 2*Pi};
//+
MeshSize {11} = 0.126544;
//+
MeshSize {12} = 0.126544;
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
Save "../geo_unrolled/cad_321.geo_unrolled";
