//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.577934, -3.613532, 0.000000, 34.275445, 8.359349, 1.000000};
//+
MeshSize {1} = 3.510310;
//+
MeshSize {2} = 3.510310;
//+
MeshSize {3} = 0.536159;
//+
MeshSize {4} = 0.536159;
//+
MeshSize {5} = 3.510310;
//+
MeshSize {6} = 3.510310;
//+
MeshSize {7} = 0.758938;
//+
MeshSize {8} = 0.758938;
//+
Cylinder(2) = {27.321207, -0.337870, 0.000000, 0.000000, 0.000000, 1.000000, 0.624237, 2*Pi};
//+
MeshSize {9} = 0.062424;
//+
MeshSize {10} = 0.062424;
//+
Cylinder(3) = {29.892056, -0.490811, 0.000000, 0.000000, 0.000000, 1.000000, 0.500676, 2*Pi};
//+
MeshSize {11} = 0.050068;
//+
MeshSize {12} = 0.050068;
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
