//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.629446, -4.399940, 0.000000, 30.862530, 8.907099, 1.000000};
//+
MeshSize {1} = 3.180532;
//+
MeshSize {2} = 3.180532;
//+
MeshSize {3} = 0.785357;
//+
MeshSize {4} = 0.785357;
//+
MeshSize {5} = 0.699506;
//+
MeshSize {6} = 0.699506;
//+
MeshSize {7} = 0.785357;
//+
MeshSize {8} = 0.785357;
//+
Cylinder(2) = {24.073835, 0.946982, 0.000000, 0.000000, 0.000000, 1.000000, 1.290741, 2*Pi};
//+
MeshSize {9} = 0.129074;
//+
MeshSize {10} = 0.129074;
//+
Cylinder(3) = {7.107334, 0.201056, 0.000000, 0.000000, 0.000000, 1.000000, 0.950514, 2*Pi};
//+
MeshSize {11} = 0.095051;
//+
MeshSize {12} = 0.095051;
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
Save "../geo_unrolled/cad_042.geo_unrolled";
