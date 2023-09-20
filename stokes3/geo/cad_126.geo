//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.816453, -3.060808, 0.000000, 34.966659, 7.613225, 1.000000};
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
Cylinder(2) = {31.117721, 3.096811, 0.000000, 0.000000, 0.000000, 1.000000, 0.875646, 2*Pi};
//+
MeshSize {9} = 0.087565;
//+
MeshSize {10} = 0.087565;
//+
Cylinder(3) = {24.430217, 1.231763, 0.000000, 0.000000, 0.000000, 1.000000, 1.039300, 2*Pi};
//+
MeshSize {11} = 0.103930;
//+
MeshSize {12} = 0.103930;
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
Save "../geo_unrolled/cad_126.geo_unrolled";
