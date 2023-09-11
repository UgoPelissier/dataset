//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.962131, -2.835544, 0.000000, 37.805300, 7.523168, 1.000000};
//+
MeshSize {1} = 0.514784;
//+
MeshSize {2} = 0.514784;
//+
MeshSize {3} = 0.655400;
//+
MeshSize {4} = 0.655400;
//+
MeshSize {5} = 3.894950;
//+
MeshSize {6} = 3.894950;
//+
MeshSize {7} = 3.894950;
//+
MeshSize {8} = 3.894950;
//+
Cylinder(2) = {6.299485, -0.309093, 0.000000, 0.000000, 0.000000, 1.000000, 0.757265, 2*Pi};
//+
MeshSize {9} = 0.075726;
//+
MeshSize {10} = 0.075726;
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
Save "../geo_unrolled/cad_210.geo_unrolled";
