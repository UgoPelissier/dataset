//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.722444, -3.532973, 0.000000, 35.825369, 7.885903, 1.000000};
//+
MeshSize {1} = 4.074683;
//+
MeshSize {2} = 4.074683;
//+
MeshSize {3} = 3.949984;
//+
MeshSize {4} = 3.949984;
//+
MeshSize {5} = 0.503371;
//+
MeshSize {6} = 0.503371;
//+
MeshSize {7} = 0.318653;
//+
MeshSize {8} = 0.318653;
//+
Cylinder(2) = {25.316838, 1.181597, 0.000000, 0.000000, 0.000000, 1.000000, 1.351765, 2*Pi};
//+
MeshSize {9} = 0.135177;
//+
MeshSize {10} = 0.135177;
//+
Cylinder(3) = {31.151212, 2.833738, 0.000000, 0.000000, 0.000000, 1.000000, 0.880009, 2*Pi};
//+
MeshSize {11} = 0.088001;
//+
MeshSize {12} = 0.088001;
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
Save "../geo_unrolled/cad_054.geo_unrolled";
