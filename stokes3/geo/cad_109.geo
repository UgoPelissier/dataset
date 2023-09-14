//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.615377, -3.701354, 0.000000, 38.037698, 7.899249, 1.000000};
//+
MeshSize {1} = 1.197813;
//+
MeshSize {2} = 1.197813;
//+
MeshSize {3} = 1.175044;
//+
MeshSize {4} = 1.175044;
//+
MeshSize {5} = 0.885608;
//+
MeshSize {6} = 0.885608;
//+
MeshSize {7} = 0.906354;
//+
MeshSize {8} = 0.906354;
//+
Cylinder(2) = {12.656401, 0.613669, 0.000000, 0.000000, 0.000000, 1.000000, 0.812715, 2*Pi};
//+
MeshSize {9} = 0.081271;
//+
MeshSize {10} = 0.081271;
//+
Cylinder(3) = {29.496988, -0.013701, 0.000000, 0.000000, 0.000000, 1.000000, 1.014725, 2*Pi};
//+
MeshSize {11} = 0.101472;
//+
MeshSize {12} = 0.101472;
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
Save "../geo_unrolled/cad_109.geo_unrolled";
