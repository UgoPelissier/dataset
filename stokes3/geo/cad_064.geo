//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.435487, -3.353808, 0.000000, 39.219250, 8.175206, 1.000000};
//+
MeshSize {1} = 3.986486;
//+
MeshSize {2} = 3.986486;
//+
MeshSize {3} = 3.986486;
//+
MeshSize {4} = 3.986486;
//+
MeshSize {5} = 0.745967;
//+
MeshSize {6} = 0.745967;
//+
MeshSize {7} = 0.785858;
//+
MeshSize {8} = 0.785858;
//+
Cylinder(2) = {32.048928, 0.312071, 0.000000, 0.000000, 0.000000, 1.000000, 0.983498, 2*Pi};
//+
MeshSize {9} = 0.098350;
//+
MeshSize {10} = 0.098350;
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
Save "../geo_unrolled/cad_064.geo_unrolled";
