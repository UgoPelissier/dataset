//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.882245, -4.820676, 0.000000, 38.314103, 9.992930, 0.000000};
//+
l = [1.3998884419048256, 3.951352130428194, 3.951352130428194, 1.4141890958606647];
//+
MeshSize {1} = 1.399888;
//+
MeshSize {2} = 3.951352;
//+
MeshSize {3} = 3.951352;
//+
MeshSize {4} = 1.414189;
//+
Disk(2) = {15.560738, -0.046128, 0.000000, 1.436609, 1.436609};
//+
c0 = 0.14366087447777628;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
