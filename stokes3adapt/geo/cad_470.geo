//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.652037, -4.029483, 0.000000, 38.224712, 9.453908, 1.000000};
//+
MeshSize {1} = 0.708867;
//+
MeshSize {2} = 0.708867;
//+
MeshSize {3} = 0.579282;
//+
MeshSize {4} = 0.579282;
//+
MeshSize {5} = 2.667584;
//+
MeshSize {6} = 2.667584;
//+
MeshSize {7} = 2.326042;
//+
MeshSize {8} = 2.326042;
//+
Cylinder(2) = {20.267844, 2.430092, 0.000000, 0.000000, 0.000000, 1.000000, 0.660027, 2*Pi};
//+
MeshSize {9} = 0.066003;
//+
MeshSize {10} = 0.066003;
//+
Cylinder(3) = {9.382506, 2.591862, 0.000000, 0.000000, 0.000000, 1.000000, 1.226509, 2*Pi};
//+
MeshSize {11} = 0.122651;
//+
MeshSize {12} = 0.122651;
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
Save "../geo_unrolled/cad_470.geo_unrolled";
