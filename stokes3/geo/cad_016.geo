//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.594519, -3.860209, 0.000000, 33.597730, 8.959181, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {17.875117, 3.894612, 0.000000, 0.000000, 0.000000, 1.000000, 0.704259, 2*Pi};
//+
MeshSize {9} = 0.070426;
//+
MeshSize {10} = 0.070426;
//+
Cylinder(3) = {24.488208, -2.341160, 0.000000, 0.000000, 0.000000, 1.000000, 0.895786, 2*Pi};
//+
MeshSize {11} = 0.089579;
//+
MeshSize {12} = 0.089579;
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
Save "../geo_unrolled/cad_016.geo_unrolled";
