//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.504778, -4.040941, 0.000000, 34.973941, 9.743020, 1.000000};
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
Cylinder(2) = {26.383943, -0.246747, 0.000000, 0.000000, 0.000000, 1.000000, 0.759192, 2*Pi};
//+
MeshSize {9} = 0.075919;
//+
MeshSize {10} = 0.075919;
//+
Cylinder(3) = {8.771749, 1.341238, 0.000000, 0.000000, 0.000000, 1.000000, 1.265814, 2*Pi};
//+
MeshSize {11} = 0.126581;
//+
MeshSize {12} = 0.126581;
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
Save "../geo_unrolled/cad_030.geo_unrolled";
