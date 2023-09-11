//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.412339, -3.306488, 0.000000, 29.589359, 7.727239, 1.000000};
//+
MeshSize {1} = 3.024945;
//+
MeshSize {2} = 3.024945;
//+
MeshSize {3} = 3.024945;
//+
MeshSize {4} = 3.024945;
//+
MeshSize {5} = 1.179973;
//+
MeshSize {6} = 1.179973;
//+
MeshSize {7} = 1.179973;
//+
MeshSize {8} = 0.214446;
//+
Cylinder(2) = {18.127124, 0.920053, 0.000000, 0.000000, 0.000000, 1.000000, 0.804598, 2*Pi};
//+
MeshSize {9} = 0.080460;
//+
MeshSize {10} = 0.080460;
//+
Cylinder(3) = {28.512267, -1.055985, 0.000000, 0.000000, 0.000000, 1.000000, 0.554275, 2*Pi};
//+
MeshSize {11} = 0.055428;
//+
MeshSize {12} = 0.055428;
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
