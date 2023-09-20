//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.222918, -4.070237, 0.000000, 35.378590, 9.049395, 1.000000};
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
Cylinder(2) = {16.844273, 1.422268, 0.000000, 0.000000, 0.000000, 1.000000, 1.215914, 2*Pi};
//+
MeshSize {9} = 0.121591;
//+
MeshSize {10} = 0.121591;
//+
Cylinder(3) = {4.059404, 2.346689, 0.000000, 0.000000, 0.000000, 1.000000, 0.721747, 2*Pi};
//+
MeshSize {11} = 0.072175;
//+
MeshSize {12} = 0.072175;
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
Save "../geo_unrolled/cad_234.geo_unrolled";
