//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.553610, -4.582216, 0.000000, 36.873365, 9.773077, 1.000000};
//+
MeshSize {1} = 1.805163;
//+
MeshSize {2} = 1.805163;
//+
MeshSize {3} = 1.700128;
//+
MeshSize {4} = 1.700128;
//+
MeshSize {5} = 1.071341;
//+
MeshSize {6} = 1.071341;
//+
MeshSize {7} = 0.565648;
//+
MeshSize {8} = 0.565648;
//+
Cylinder(2) = {34.449681, 1.957499, 0.000000, 0.000000, 0.000000, 1.000000, 0.946189, 2*Pi};
//+
MeshSize {9} = 0.094619;
//+
MeshSize {10} = 0.094619;
//+
Cylinder(3) = {7.677529, 0.434172, 0.000000, 0.000000, 0.000000, 1.000000, 1.288342, 2*Pi};
//+
MeshSize {11} = 0.128834;
//+
MeshSize {12} = 0.128834;
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
Save "../geo_unrolled/cad_469.geo_unrolled";
