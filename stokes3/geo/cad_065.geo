//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.869695, -4.547104, 0.000000, 30.605846, 9.751328, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {4.091573, -2.431453, 0.000000, 0.000000, 0.000000, 1.000000, 0.674497, 2*Pi};
//+
MeshSize {9} = 0.067450;
//+
MeshSize {10} = 0.067450;
//+
Cylinder(3) = {24.865195, -2.555515, 0.000000, 0.000000, 0.000000, 1.000000, 0.823771, 2*Pi};
//+
MeshSize {11} = 0.082377;
//+
MeshSize {12} = 0.082377;
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
Save "../geo_unrolled/cad_065.geo_unrolled";
