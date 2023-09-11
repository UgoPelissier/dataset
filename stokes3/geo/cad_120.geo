//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.325185, -3.322517, 0.000000, 34.980383, 8.634289, 1.000000};
//+
MeshSize {1} = 3.556854;
//+
MeshSize {2} = 3.556854;
//+
MeshSize {3} = 0.568857;
//+
MeshSize {4} = 0.568857;
//+
MeshSize {5} = 0.568857;
//+
MeshSize {6} = 0.529465;
//+
MeshSize {7} = 0.529465;
//+
MeshSize {8} = 0.529465;
//+
Cylinder(2) = {30.108332, 1.303058, 0.000000, 0.000000, 0.000000, 1.000000, 1.268963, 2*Pi};
//+
MeshSize {9} = 0.126896;
//+
MeshSize {10} = 0.126896;
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
