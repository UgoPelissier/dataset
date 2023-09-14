//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.964026, -4.191196, 0.000000, 33.825793, 8.504043, 1.000000};
//+
MeshSize {1} = 1.681937;
//+
MeshSize {2} = 1.681937;
//+
MeshSize {3} = 3.504870;
//+
MeshSize {4} = 3.504870;
//+
MeshSize {5} = 1.025816;
//+
MeshSize {6} = 1.025816;
//+
MeshSize {7} = 1.036234;
//+
MeshSize {8} = 1.036234;
//+
Cylinder(2) = {23.869208, -0.082754, 0.000000, 0.000000, 0.000000, 1.000000, 1.409701, 2*Pi};
//+
MeshSize {9} = 0.140970;
//+
MeshSize {10} = 0.140970;
//+
Cylinder(3) = {19.077221, -1.486631, 0.000000, 0.000000, 0.000000, 1.000000, 1.494628, 2*Pi};
//+
MeshSize {11} = 0.149463;
//+
MeshSize {12} = 0.149463;
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
Save "../geo_unrolled/cad_067.geo_unrolled";
