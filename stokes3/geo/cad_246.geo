//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.784376, -3.303346, 0.000000, 37.795227, 7.738405, 1.000000};
//+
MeshSize {1} = 3.877314;
//+
MeshSize {2} = 3.877314;
//+
MeshSize {3} = 3.877314;
//+
MeshSize {4} = 3.877314;
//+
MeshSize {5} = 0.489757;
//+
MeshSize {6} = 0.489757;
//+
MeshSize {7} = 0.500257;
//+
MeshSize {8} = 0.500257;
//+
Cylinder(2) = {34.695087, 0.491465, 0.000000, 0.000000, 0.000000, 1.000000, 0.532902, 2*Pi};
//+
MeshSize {9} = 0.053290;
//+
MeshSize {10} = 0.053290;
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
Save "../geo_unrolled/cad_246.geo_unrolled";
