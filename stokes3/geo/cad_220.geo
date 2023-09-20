//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.383316, -4.178651, 0.000000, 31.610826, 8.432754, 1.000000};
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
Cylinder(2) = {6.097338, 1.490474, 0.000000, 0.000000, 0.000000, 1.000000, 1.126687, 2*Pi};
//+
MeshSize {9} = 0.112669;
//+
MeshSize {10} = 0.112669;
//+
Cylinder(3) = {4.125030, -0.981990, 0.000000, 0.000000, 0.000000, 1.000000, 1.088671, 2*Pi};
//+
MeshSize {11} = 0.108867;
//+
MeshSize {12} = 0.108867;
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
Save "../geo_unrolled/cad_220.geo_unrolled";
