//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.355283, -3.990903, 0.000000, 32.715569, 9.470226, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {10.956940, -2.267558, 0.000000, 0.000000, 0.000000, 1.000000, 0.794051, 2*Pi};
//+
c0 = 0.07940511216503428;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {28.150369, -0.279025, 0.000000, 0.000000, 0.000000, 1.000000, 1.366393, 2*Pi};
//+
c1 = 0.13663933696925398;
//+
MeshSize {11, 12} = c1;
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
