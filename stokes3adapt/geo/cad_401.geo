//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.222144, -2.842521, 0.000000, 32.557128, 7.556372, 1.000000};
//+
MeshSize {1} = 0.353091;
//+
MeshSize {2} = 0.353091;
//+
MeshSize {3} = 0.502904;
//+
MeshSize {4} = 0.502904;
//+
MeshSize {5} = 3.628648;
//+
MeshSize {6} = 3.628648;
//+
MeshSize {7} = 4.152571;
//+
MeshSize {8} = 4.152571;
//+
Cylinder(2) = {17.648763, -0.412139, 0.000000, 0.000000, 0.000000, 1.000000, 1.171558, 2*Pi};
//+
MeshSize {9} = 0.117156;
//+
MeshSize {10} = 0.117156;
//+
Cylinder(3) = {2.864152, 0.089071, 0.000000, 0.000000, 0.000000, 1.000000, 0.694450, 2*Pi};
//+
MeshSize {11} = 0.069445;
//+
MeshSize {12} = 0.069445;
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
Save "../geo_unrolled/cad_401.geo_unrolled";
