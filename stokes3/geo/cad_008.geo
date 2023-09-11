//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.379455, -3.456664, 0.000000, 36.020542, 8.892374, 1.000000};
//+
MeshSize {1} = 3.667054;
//+
MeshSize {2} = 3.667054;
//+
MeshSize {3} = 3.667054;
//+
MeshSize {4} = 3.667054;
//+
MeshSize {5} = 1.191915;
//+
MeshSize {6} = 1.191915;
//+
MeshSize {7} = 1.044956;
//+
MeshSize {8} = 1.044956;
//+
Cylinder(2) = {24.919957, 3.048768, 0.000000, 0.000000, 0.000000, 1.000000, 1.276000, 2*Pi};
//+
MeshSize {9} = 0.127600;
//+
MeshSize {10} = 0.127600;
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
Save "../geo_unrolled/cad_008.geo_unrolled";
