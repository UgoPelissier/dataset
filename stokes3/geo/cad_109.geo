//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.221367, -4.823518, 0.000000, 38.017186, 9.773469, 1.000000};
//+
MeshSize {1} = 1.135529;
//+
MeshSize {2} = 1.135529;
//+
MeshSize {3} = 1.135529;
//+
MeshSize {4} = 3.854954;
//+
MeshSize {5} = 3.854954;
//+
MeshSize {6} = 3.854954;
//+
MeshSize {7} = 3.854954;
//+
MeshSize {8} = 1.211313;
//+
Cylinder(2) = {11.555315, -0.896268, 0.000000, 0.000000, 0.000000, 1.000000, 0.639777, 2*Pi};
//+
MeshSize {9} = 0.063978;
//+
MeshSize {10} = 0.063978;
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
