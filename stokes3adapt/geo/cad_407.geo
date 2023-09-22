//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.512526, -3.378295, 0.000000, 37.940275, 7.907118, 1.000000};
//+
MeshSize {1} = 0.689832;
//+
MeshSize {2} = 0.689832;
//+
MeshSize {3} = 0.706572;
//+
MeshSize {4} = 0.706572;
//+
MeshSize {5} = 2.321208;
//+
MeshSize {6} = 2.321208;
//+
MeshSize {7} = 2.094916;
//+
MeshSize {8} = 2.094916;
//+
Cylinder(2) = {11.145783, 0.234148, 0.000000, 0.000000, 0.000000, 1.000000, 1.436317, 2*Pi};
//+
MeshSize {9} = 0.143632;
//+
MeshSize {10} = 0.143632;
//+
Cylinder(3) = {19.759606, 2.106792, 0.000000, 0.000000, 0.000000, 1.000000, 0.683247, 2*Pi};
//+
MeshSize {11} = 0.068325;
//+
MeshSize {12} = 0.068325;
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
Save "../geo_unrolled/cad_407.geo_unrolled";
