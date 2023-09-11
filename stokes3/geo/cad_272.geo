//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.711395, -3.766811, 0.000000, 36.903341, 9.190586, 1.000000};
//+
MeshSize {1} = 1.748853;
//+
MeshSize {2} = 1.748853;
//+
MeshSize {3} = 3.789439;
//+
MeshSize {4} = 3.789439;
//+
MeshSize {5} = 1.410329;
//+
MeshSize {6} = 1.410329;
//+
MeshSize {7} = 3.789439;
//+
MeshSize {8} = 3.789439;
//+
Cylinder(2) = {18.410861, 0.711586, 0.000000, 0.000000, 0.000000, 1.000000, 0.768717, 2*Pi};
//+
MeshSize {9} = 0.076872;
//+
MeshSize {10} = 0.076872;
//+
Cylinder(3) = {15.580967, -0.441224, 0.000000, 0.000000, 0.000000, 1.000000, 1.133628, 2*Pi};
//+
MeshSize {11} = 0.113363;
//+
MeshSize {12} = 0.113363;
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
