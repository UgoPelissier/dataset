//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.579143, -3.744754, 0.000000, 30.944971, 8.324663, 1.000000};
//+
MeshSize {1} = 1.212907;
//+
MeshSize {2} = 1.212907;
//+
MeshSize {3} = 1.134508;
//+
MeshSize {4} = 1.134508;
//+
MeshSize {5} = 1.212907;
//+
MeshSize {6} = 1.212907;
//+
MeshSize {7} = 3.179772;
//+
MeshSize {8} = 3.179772;
//+
Cylinder(2) = {11.974112, 2.775132, 0.000000, 0.000000, 0.000000, 1.000000, 0.999301, 2*Pi};
//+
MeshSize {9} = 0.099930;
//+
MeshSize {10} = 0.099930;
//+
Cylinder(3) = {20.635936, 1.538786, 0.000000, 0.000000, 0.000000, 1.000000, 0.757327, 2*Pi};
//+
MeshSize {11} = 0.075733;
//+
MeshSize {12} = 0.075733;
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
Save "../geo_unrolled/cad_136.geo_unrolled";
