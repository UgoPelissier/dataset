//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.398034, -3.242250, 0.000000, 32.098082, 7.783622, 1.000000};
//+
MeshSize {1} = 3.272833;
//+
MeshSize {2} = 3.272833;
//+
MeshSize {3} = 3.272833;
//+
MeshSize {4} = 3.272833;
//+
MeshSize {5} = 0.829148;
//+
MeshSize {6} = 0.829148;
//+
MeshSize {7} = 0.883268;
//+
MeshSize {8} = 0.883268;
//+
Cylinder(2) = {23.906576, -0.007441, 0.000000, 0.000000, 0.000000, 1.000000, 0.886987, 2*Pi};
//+
MeshSize {9} = 0.088699;
//+
MeshSize {10} = 0.088699;
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
