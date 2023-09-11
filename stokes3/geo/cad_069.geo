//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.581556, -3.808619, 0.000000, 34.727664, 8.563760, 1.000000};
//+
MeshSize {1} = 3.556790;
//+
MeshSize {2} = 3.556790;
//+
MeshSize {3} = 3.556790;
//+
MeshSize {4} = 3.556790;
//+
MeshSize {5} = 0.807309;
//+
MeshSize {6} = 0.807309;
//+
MeshSize {7} = 0.970438;
//+
MeshSize {8} = 0.970438;
//+
Cylinder(2) = {26.338398, -1.449063, 0.000000, 0.000000, 0.000000, 1.000000, 1.202855, 2*Pi};
//+
MeshSize {9} = 0.120285;
//+
MeshSize {10} = 0.120285;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_069.geo_unrolled";
