//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.508756, -3.802234, 0.000000, 31.501048, 7.847192, 1.000000};
//+
MeshSize {1} = 1.183036;
//+
MeshSize {2} = 1.183036;
//+
MeshSize {3} = 1.036995;
//+
MeshSize {4} = 1.036995;
//+
MeshSize {5} = 3.224937;
//+
MeshSize {6} = 3.224937;
//+
MeshSize {7} = 3.224937;
//+
MeshSize {8} = 3.224937;
//+
Cylinder(2) = {11.808774, 2.382892, 0.000000, 0.000000, 0.000000, 1.000000, 1.051647, 2*Pi};
//+
MeshSize {9} = 0.105165;
//+
MeshSize {10} = 0.105165;
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
