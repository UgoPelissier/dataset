//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.114013, -3.893423, 0.000000, 31.872454, 7.999373, 1.000000};
//+
MeshSize {1} = 0.854470;
//+
MeshSize {2} = 0.854470;
//+
MeshSize {3} = 0.921126;
//+
MeshSize {4} = 0.921126;
//+
MeshSize {5} = 0.854470;
//+
MeshSize {6} = 0.854470;
//+
MeshSize {7} = 3.223556;
//+
MeshSize {8} = 3.223556;
//+
Cylinder(2) = {8.412246, 0.185154, 0.000000, 0.000000, 0.000000, 1.000000, 0.701673, 2*Pi};
//+
MeshSize {9} = 0.070167;
//+
MeshSize {10} = 0.070167;
//+
Cylinder(3) = {22.500456, -1.637062, 0.000000, 0.000000, 0.000000, 1.000000, 0.539406, 2*Pi};
//+
MeshSize {11} = 0.053941;
//+
MeshSize {12} = 0.053941;
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
Save "../geo_unrolled/cad_224.geo_unrolled";
