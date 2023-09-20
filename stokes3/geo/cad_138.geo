//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.542137, -3.150470, 0.000000, 30.045184, 7.584559, 1.000000};
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
Cylinder(2) = {23.379077, -0.664466, 0.000000, 0.000000, 0.000000, 1.000000, 1.342545, 2*Pi};
//+
MeshSize {9} = 0.134254;
//+
MeshSize {10} = 0.134254;
//+
Cylinder(3) = {7.078927, 1.571290, 0.000000, 0.000000, 0.000000, 1.000000, 0.509141, 2*Pi};
//+
MeshSize {11} = 0.050914;
//+
MeshSize {12} = 0.050914;
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
Save "../geo_unrolled/cad_138.geo_unrolled";
