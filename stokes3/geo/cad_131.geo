//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.661939, -3.605797, 0.000000, 33.758503, 8.182917, 1.000000};
//+
MeshSize {1} = 0.941774;
//+
MeshSize {2} = 0.941774;
//+
MeshSize {3} = 0.941774;
//+
MeshSize {4} = 3.466276;
//+
MeshSize {5} = 3.466276;
//+
MeshSize {6} = 3.466276;
//+
MeshSize {7} = 3.466276;
//+
MeshSize {8} = 0.862046;
//+
Cylinder(2) = {9.749469, 1.460538, 0.000000, 0.000000, 0.000000, 1.000000, 0.986633, 2*Pi};
//+
MeshSize {9} = 0.098663;
//+
MeshSize {10} = 0.098663;
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
