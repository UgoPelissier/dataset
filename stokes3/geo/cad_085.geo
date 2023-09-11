//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.438116, -4.268183, 0.000000, 30.776145, 9.932867, 1.000000};
//+
MeshSize {1} = 3.160689;
//+
MeshSize {2} = 3.160689;
//+
MeshSize {3} = 3.160689;
//+
MeshSize {4} = 3.160689;
//+
MeshSize {5} = 1.166527;
//+
MeshSize {6} = 1.166527;
//+
MeshSize {7} = 1.407886;
//+
MeshSize {8} = 1.407886;
//+
Cylinder(2) = {19.005479, -2.589524, 0.000000, 0.000000, 0.000000, 1.000000, 0.658378, 2*Pi};
//+
MeshSize {9} = 0.065838;
//+
MeshSize {10} = 0.065838;
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
Save "../geo_unrolled/cad_085.geo_unrolled";
