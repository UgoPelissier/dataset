//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.400615, -3.231061, 0.000000, 39.187624, 7.726667, 1.000000};
//+
MeshSize {1} = 1.741760;
//+
MeshSize {2} = 1.741760;
//+
MeshSize {3} = 1.741760;
//+
MeshSize {4} = 0.719359;
//+
MeshSize {5} = 0.719359;
//+
MeshSize {6} = 0.719359;
//+
MeshSize {7} = 3.977630;
//+
MeshSize {8} = 3.977630;
//+
Cylinder(2) = {18.196313, 2.059219, 0.000000, 0.000000, 0.000000, 1.000000, 1.147793, 2*Pi};
//+
MeshSize {9} = 0.114779;
//+
MeshSize {10} = 0.114779;
//+
Cylinder(3) = {7.561479, 1.513517, 0.000000, 0.000000, 0.000000, 1.000000, 1.396461, 2*Pi};
//+
MeshSize {11} = 0.139646;
//+
MeshSize {12} = 0.139646;
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
