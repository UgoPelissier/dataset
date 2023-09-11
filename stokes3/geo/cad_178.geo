//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.611948, -4.913278, 0.000000, 32.480959, 9.998988, 1.000000};
//+
MeshSize {1} = 3.346842;
//+
MeshSize {2} = 3.346842;
//+
MeshSize {3} = 3.346842;
//+
MeshSize {4} = 3.346842;
//+
MeshSize {5} = 0.937436;
//+
MeshSize {6} = 0.937436;
//+
MeshSize {7} = 0.921276;
//+
MeshSize {8} = 0.921276;
//+
Cylinder(2) = {23.789487, 0.256931, 0.000000, 0.000000, 0.000000, 1.000000, 1.269165, 2*Pi};
//+
MeshSize {9} = 0.126916;
//+
MeshSize {10} = 0.126916;
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
