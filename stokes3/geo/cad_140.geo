//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.017143, -3.944552, 0.000000, 36.723187, 9.515419, 1.000000};
//+
MeshSize {1} = 1.295964;
//+
MeshSize {2} = 1.295964;
//+
MeshSize {3} = 1.407378;
//+
MeshSize {4} = 1.407378;
//+
MeshSize {5} = 0.610928;
//+
MeshSize {6} = 0.610928;
//+
MeshSize {7} = 0.943247;
//+
MeshSize {8} = 0.943247;
//+
Cylinder(2) = {29.951245, -2.214003, 0.000000, 0.000000, 0.000000, 1.000000, 0.896896, 2*Pi};
//+
MeshSize {9} = 0.089690;
//+
MeshSize {10} = 0.089690;
//+
Cylinder(3) = {13.706038, -0.894189, 0.000000, 0.000000, 0.000000, 1.000000, 1.065002, 2*Pi};
//+
MeshSize {11} = 0.106500;
//+
MeshSize {12} = 0.106500;
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
Save "../geo_unrolled/cad_140.geo_unrolled";
