//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.869863, -3.361022, 0.000000, 33.137981, 7.854687, 1.000000};
//+
MeshSize {1} = 0.451120;
//+
MeshSize {2} = 0.451120;
//+
MeshSize {3} = 0.541430;
//+
MeshSize {4} = 0.541430;
//+
MeshSize {5} = 3.506327;
//+
MeshSize {6} = 3.506327;
//+
MeshSize {7} = 3.296246;
//+
MeshSize {8} = 3.296246;
//+
Cylinder(2) = {7.316205, -0.629691, 0.000000, 0.000000, 0.000000, 1.000000, 0.840896, 2*Pi};
//+
MeshSize {9} = 0.084090;
//+
MeshSize {10} = 0.084090;
//+
Cylinder(3) = {12.584708, 1.740567, 0.000000, 0.000000, 0.000000, 1.000000, 1.276836, 2*Pi};
//+
MeshSize {11} = 0.127684;
//+
MeshSize {12} = 0.127684;
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
Save "../geo_unrolled/cad_072.geo_unrolled";
