//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.882456, -3.479914, 0.000000, 36.756112, 8.414843, 1.000000};
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
Cylinder(2) = {15.077318, 0.591409, 0.000000, 0.000000, 0.000000, 1.000000, 0.694655, 2*Pi};
//+
MeshSize {9} = 0.069466;
//+
MeshSize {10} = 0.069466;
//+
Cylinder(3) = {35.340679, 2.145492, 0.000000, 0.000000, 0.000000, 1.000000, 0.699058, 2*Pi};
//+
MeshSize {11} = 0.069906;
//+
MeshSize {12} = 0.069906;
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
Save "../geo_unrolled/cad_111.geo_unrolled";
