//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.319588, -4.080289, 0.000000, 30.329803, 8.855428, 1.000000};
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
Cylinder(2) = {28.421930, 1.219393, 0.000000, 0.000000, 0.000000, 1.000000, 1.293696, 2*Pi};
//+
MeshSize {9} = 0.129370;
//+
MeshSize {10} = 0.129370;
//+
Cylinder(3) = {4.256492, 2.571378, 0.000000, 0.000000, 0.000000, 1.000000, 0.526284, 2*Pi};
//+
MeshSize {11} = 0.052628;
//+
MeshSize {12} = 0.052628;
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
Save "../geo_unrolled/cad_101.geo_unrolled";
