//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.371844, -3.341627, 0.000000, 31.283407, 8.490854, 1.000000};
//+
MeshSize {1} = 0.984062;
//+
MeshSize {2} = 0.984062;
//+
MeshSize {3} = 0.918636;
//+
MeshSize {4} = 0.918636;
//+
MeshSize {5} = 1.152602;
//+
MeshSize {6} = 1.152602;
//+
MeshSize {7} = 1.092819;
//+
MeshSize {8} = 1.092819;
//+
Cylinder(2) = {9.670972, 1.693428, 0.000000, 0.000000, 0.000000, 1.000000, 0.734144, 2*Pi};
//+
MeshSize {9} = 0.073414;
//+
MeshSize {10} = 0.073414;
//+
Cylinder(3) = {20.749549, 1.729570, 0.000000, 0.000000, 0.000000, 1.000000, 0.501086, 2*Pi};
//+
MeshSize {11} = 0.050109;
//+
MeshSize {12} = 0.050109;
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
Save "../geo_unrolled/cad_169.geo_unrolled";
