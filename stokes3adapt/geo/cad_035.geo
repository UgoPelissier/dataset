//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.761230, -4.410779, 0.000000, 36.758869, 9.579811, 1.000000};
//+
MeshSize {1} = 0.636623;
//+
MeshSize {2} = 0.636623;
//+
MeshSize {3} = 0.328839;
//+
MeshSize {4} = 0.328839;
//+
MeshSize {5} = 4.164366;
//+
MeshSize {6} = 4.164366;
//+
MeshSize {7} = 2.897817;
//+
MeshSize {8} = 2.897817;
//+
Cylinder(2) = {24.393470, 2.694159, 0.000000, 0.000000, 0.000000, 1.000000, 1.151755, 2*Pi};
//+
MeshSize {9} = 0.115175;
//+
MeshSize {10} = 0.115175;
//+
Cylinder(3) = {2.851395, 1.826050, 0.000000, 0.000000, 0.000000, 1.000000, 1.127242, 2*Pi};
//+
MeshSize {11} = 0.112724;
//+
MeshSize {12} = 0.112724;
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
Save "../geo_unrolled/cad_035.geo_unrolled";
