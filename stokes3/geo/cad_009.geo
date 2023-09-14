//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.640962, -4.205602, 0.000000, 33.706691, 8.634309, 1.000000};
//+
MeshSize {1} = 3.461790;
//+
MeshSize {2} = 3.461790;
//+
MeshSize {3} = 1.696913;
//+
MeshSize {4} = 1.696913;
//+
MeshSize {5} = 0.394603;
//+
MeshSize {6} = 0.394603;
//+
MeshSize {7} = 0.646603;
//+
MeshSize {8} = 0.646603;
//+
Cylinder(2) = {29.900269, -1.740290, 0.000000, 0.000000, 0.000000, 1.000000, 1.138949, 2*Pi};
//+
MeshSize {9} = 0.113895;
//+
MeshSize {10} = 0.113895;
//+
Cylinder(3) = {18.526403, 2.405747, 0.000000, 0.000000, 0.000000, 1.000000, 1.030354, 2*Pi};
//+
MeshSize {11} = 0.103035;
//+
MeshSize {12} = 0.103035;
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
Save "../geo_unrolled/cad_009.geo_unrolled";
