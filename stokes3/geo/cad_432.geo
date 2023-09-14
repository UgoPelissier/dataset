//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.806687, -3.908152, 0.000000, 35.036575, 8.474877, 1.000000};
//+
MeshSize {1} = 1.396719;
//+
MeshSize {2} = 1.396719;
//+
MeshSize {3} = 1.526833;
//+
MeshSize {4} = 1.526833;
//+
MeshSize {5} = 0.824957;
//+
MeshSize {6} = 0.824957;
//+
MeshSize {7} = 1.037522;
//+
MeshSize {8} = 1.037522;
//+
Cylinder(2) = {26.824174, -2.237892, 0.000000, 0.000000, 0.000000, 1.000000, 0.922869, 2*Pi};
//+
MeshSize {9} = 0.092287;
//+
MeshSize {10} = 0.092287;
//+
Cylinder(3) = {15.752232, -2.082227, 0.000000, 0.000000, 0.000000, 1.000000, 1.089481, 2*Pi};
//+
MeshSize {11} = 0.108948;
//+
MeshSize {12} = 0.108948;
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
Save "../geo_unrolled/cad_432.geo_unrolled";
