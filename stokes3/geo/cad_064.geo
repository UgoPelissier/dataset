//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.597146, -4.033104, 0.000000, 37.270800, 8.108922, 1.000000};
//+
MeshSize {1} = 0.560910;
//+
MeshSize {2} = 0.560910;
//+
MeshSize {3} = 0.833038;
//+
MeshSize {4} = 0.833038;
//+
MeshSize {5} = 0.560910;
//+
MeshSize {6} = 0.560910;
//+
MeshSize {7} = 3.808438;
//+
MeshSize {8} = 3.808438;
//+
Cylinder(2) = {4.768479, 0.523658, 0.000000, 0.000000, 0.000000, 1.000000, 0.568610, 2*Pi};
//+
MeshSize {9} = 0.056861;
//+
MeshSize {10} = 0.056861;
//+
Cylinder(3) = {28.974938, -2.374638, 0.000000, 0.000000, 0.000000, 1.000000, 0.715951, 2*Pi};
//+
MeshSize {11} = 0.071595;
//+
MeshSize {12} = 0.071595;
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
Save "../geo_unrolled/cad_064.geo_unrolled";
