//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.639427, -4.004003, 0.000000, 32.110866, 8.058027, 1.000000};
//+
MeshSize {1} = 0.569966;
//+
MeshSize {2} = 0.569966;
//+
MeshSize {3} = 0.756203;
//+
MeshSize {4} = 0.756203;
//+
MeshSize {5} = 2.938618;
//+
MeshSize {6} = 2.938618;
//+
MeshSize {7} = 1.913485;
//+
MeshSize {8} = 1.913485;
//+
Cylinder(2) = {24.119648, 1.423849, 0.000000, 0.000000, 0.000000, 1.000000, 1.392180, 2*Pi};
//+
MeshSize {9} = 0.139218;
//+
MeshSize {10} = 0.139218;
//+
Cylinder(3) = {2.847272, -0.629156, 0.000000, 0.000000, 0.000000, 1.000000, 0.529797, 2*Pi};
//+
MeshSize {11} = 0.052980;
//+
MeshSize {12} = 0.052980;
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
Save "../geo_unrolled/cad_000.geo_unrolled";
