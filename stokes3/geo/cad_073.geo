//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.440469, -4.741966, 0.000000, 30.073298, 9.852659, 1.000000};
//+
MeshSize {1} = 1.530140;
//+
MeshSize {2} = 1.530140;
//+
MeshSize {3} = 1.530140;
//+
MeshSize {4} = 3.090888;
//+
MeshSize {5} = 3.090888;
//+
MeshSize {6} = 1.515303;
//+
MeshSize {7} = 1.515303;
//+
MeshSize {8} = 1.515303;
//+
Cylinder(2) = {14.577317, 3.173696, 0.000000, 0.000000, 0.000000, 1.000000, 0.900707, 2*Pi};
//+
MeshSize {9} = 0.090071;
//+
MeshSize {10} = 0.090071;
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
