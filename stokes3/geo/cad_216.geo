//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.873135, -4.547837, 0.000000, 33.594345, 9.259415, 1.000000};
//+
MeshSize {1} = 0.489246;
//+
MeshSize {2} = 0.489246;
//+
MeshSize {3} = 0.393951;
//+
MeshSize {4} = 0.393951;
//+
MeshSize {5} = 3.477702;
//+
MeshSize {6} = 3.477702;
//+
MeshSize {7} = 3.477702;
//+
MeshSize {8} = 3.477702;
//+
Cylinder(2) = {2.692004, 0.594165, 0.000000, 0.000000, 0.000000, 1.000000, 0.561758, 2*Pi};
//+
MeshSize {9} = 0.056176;
//+
MeshSize {10} = 0.056176;
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
