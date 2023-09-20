//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.353914, -4.062474, 0.000000, 35.626524, 8.311076, 1.000000};
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
Cylinder(2) = {13.861029, -1.729972, 0.000000, 0.000000, 0.000000, 1.000000, 0.887800, 2*Pi};
//+
MeshSize {9} = 0.088780;
//+
MeshSize {10} = 0.088780;
//+
Cylinder(3) = {15.151447, -0.131055, 0.000000, 0.000000, 0.000000, 1.000000, 0.576921, 2*Pi};
//+
MeshSize {11} = 0.057692;
//+
MeshSize {12} = 0.057692;
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
Save "../geo_unrolled/cad_146.geo_unrolled";
