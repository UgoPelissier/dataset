//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.882245, -4.820676, 0.000000, 38.314103, 9.992930, 1.000000};
//+
l = [1.3998884419048256, 1.3998884419048256, 1.3998884419048256, 3.951352130428194, 3.951352130428194, 3.951352130428194, 3.951352130428194, 1.4141890958606647, 1.4141890958606647, 1.4141890958606647];
//+
MeshSize {1} = 1.399888;
//+
MeshSize {2} = 1.399888;
//+
MeshSize {3} = 1.399888;
//+
MeshSize {4} = 3.951352;
//+
MeshSize {5} = 3.951352;
//+
MeshSize {6} = 3.951352;
//+
MeshSize {7} = 3.951352;
//+
MeshSize {8} = 1.414189;
//+
Cylinder(2) = {15.560738, -0.046128, 0.000000, 0.000000, 0.000000, 1.000000, 1.436609, 2*Pi};
//+
c0 = 0.14366087447777628;
//+
MeshSize {9, 10} = c0;
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
