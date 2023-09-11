//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.550839, -4.438070, 0.000000, 30.381253, 9.980643, 1.000000};
//+
MeshSize {1} = 3.133205;
//+
MeshSize {2} = 3.133205;
//+
MeshSize {3} = 3.133205;
//+
MeshSize {4} = 3.133205;
//+
MeshSize {5} = 0.424904;
//+
MeshSize {6} = 0.424904;
//+
MeshSize {7} = 0.589307;
//+
MeshSize {8} = 0.589307;
//+
Cylinder(2) = {28.238831, -0.384775, 0.000000, 0.000000, 0.000000, 1.000000, 0.617466, 2*Pi};
//+
MeshSize {9} = 0.061747;
//+
MeshSize {10} = 0.061747;
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
