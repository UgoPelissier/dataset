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
MeshSize {3} = 1.166527;
//+
MeshSize {4} = 1.166527;
//+
MeshSize {5} = 3.160689;
//+
MeshSize {6} = 3.160689;
//+
MeshSize {7} = 1.166527;
//+
MeshSize {8} = 1.166527;
//+
Cylinder(2) = {19.005479, -2.589524, 0.000000, 0.000000, 0.000000, 1.000000, 0.658378, 2*Pi};
//+
MeshSize {9} = 0.065838;
//+
MeshSize {10} = 0.065838;
//+
Cylinder(3) = {17.194032, 0.519006, 0.000000, 0.000000, 0.000000, 1.000000, 0.593209, 2*Pi};
//+
MeshSize {11} = 0.059321;
//+
MeshSize {12} = 0.059321;
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
Save "../geo_unrolled/cad_049.geo_unrolled";
