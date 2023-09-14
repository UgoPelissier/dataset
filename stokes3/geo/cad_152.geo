//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.084982, -3.424807, 0.000000, 36.491035, 8.387522, 1.000000};
//+
MeshSize {1} = 3.681566;
//+
MeshSize {2} = 3.681566;
//+
MeshSize {3} = 3.681566;
//+
MeshSize {4} = 3.681566;
//+
MeshSize {5} = 0.259533;
//+
MeshSize {6} = 0.259533;
//+
MeshSize {7} = 0.517546;
//+
MeshSize {8} = 0.517546;
//+
Cylinder(2) = {24.779223, -0.841958, 0.000000, 0.000000, 0.000000, 1.000000, 1.252683, 2*Pi};
//+
MeshSize {9} = 0.125268;
//+
MeshSize {10} = 0.125268;
//+
Cylinder(3) = {35.322073, -0.583306, 0.000000, 0.000000, 0.000000, 1.000000, 0.510548, 2*Pi};
//+
MeshSize {11} = 0.051055;
//+
MeshSize {12} = 0.051055;
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
Save "../geo_unrolled/cad_152.geo_unrolled";
