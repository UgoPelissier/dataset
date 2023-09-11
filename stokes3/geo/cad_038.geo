//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.787375, -4.715146, 0.000000, 37.934293, 9.646483, 1.000000};
//+
MeshSize {1} = 1.006690;
//+
MeshSize {2} = 1.006690;
//+
MeshSize {3} = 0.708737;
//+
MeshSize {4} = 0.708737;
//+
MeshSize {5} = 3.902091;
//+
MeshSize {6} = 3.902091;
//+
MeshSize {7} = 3.902091;
//+
MeshSize {8} = 3.902091;
//+
Cylinder(2) = {8.613005, 3.053947, 0.000000, 0.000000, 0.000000, 1.000000, 0.960303, 2*Pi};
//+
MeshSize {9} = 0.096030;
//+
MeshSize {10} = 0.096030;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
