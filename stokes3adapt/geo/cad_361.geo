//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.472452, -3.105916, 0.000000, 39.131659, 7.695205, 1.000000};
//+
MeshSize {1} = 1.310803;
//+
MeshSize {2} = 1.310803;
//+
MeshSize {3} = 1.372232;
//+
MeshSize {4} = 1.372232;
//+
MeshSize {5} = 0.922066;
//+
MeshSize {6} = 0.922066;
//+
MeshSize {7} = 0.872283;
//+
MeshSize {8} = 0.872283;
//+
Cylinder(2) = {25.096636, 2.293927, 0.000000, 0.000000, 0.000000, 1.000000, 0.812500, 2*Pi};
//+
MeshSize {9} = 0.081250;
//+
MeshSize {10} = 0.081250;
//+
Cylinder(3) = {18.569132, 0.097445, 0.000000, 0.000000, 0.000000, 1.000000, 0.969232, 2*Pi};
//+
MeshSize {11} = 0.096923;
//+
MeshSize {12} = 0.096923;
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
Save "../geo_unrolled/cad_361.geo_unrolled";
