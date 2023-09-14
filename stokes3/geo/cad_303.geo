//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.823643, -3.572170, 0.000000, 29.582889, 7.675970, 1.000000};
//+
MeshSize {1} = 0.468066;
//+
MeshSize {2} = 0.468066;
//+
MeshSize {3} = 0.215846;
//+
MeshSize {4} = 0.215846;
//+
MeshSize {5} = 3.064779;
//+
MeshSize {6} = 3.064779;
//+
MeshSize {7} = 3.064779;
//+
MeshSize {8} = 3.064779;
//+
Cylinder(2) = {2.953060, 1.728413, 0.000000, 0.000000, 0.000000, 1.000000, 1.031661, 2*Pi};
//+
MeshSize {9} = 0.103166;
//+
MeshSize {10} = 0.103166;
//+
Cylinder(3) = {5.760834, 0.201049, 0.000000, 0.000000, 0.000000, 1.000000, 0.748763, 2*Pi};
//+
MeshSize {11} = 0.074876;
//+
MeshSize {12} = 0.074876;
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
Save "../geo_unrolled/cad_303.geo_unrolled";
