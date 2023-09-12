//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.220788, -3.141949, 0.000000, 31.722474, 7.953395, 1.000000};
//+
MeshSize {1} = 3.218984;
//+
MeshSize {2} = 3.218984;
//+
MeshSize {3} = 0.738242;
//+
MeshSize {4} = 0.738242;
//+
MeshSize {5} = 3.218984;
//+
MeshSize {6} = 3.218984;
//+
MeshSize {7} = 0.738242;
//+
MeshSize {8} = 0.738242;
//+
Cylinder(2) = {25.543751, 2.801592, 0.000000, 0.000000, 0.000000, 1.000000, 1.351388, 2*Pi};
//+
MeshSize {9} = 0.135139;
//+
MeshSize {10} = 0.135139;
//+
Cylinder(3) = {17.558081, -1.665022, 0.000000, 0.000000, 0.000000, 1.000000, 0.567363, 2*Pi};
//+
MeshSize {11} = 0.056736;
//+
MeshSize {12} = 0.056736;
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
Save "../geo_unrolled/cad_255.geo_unrolled";
