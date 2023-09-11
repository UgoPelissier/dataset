//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179442, -4.078741, 0.000000, 35.161909, 8.185778, 1.000000};
//+
MeshSize {1} = 3.557756;
//+
MeshSize {2} = 3.557756;
//+
MeshSize {3} = 3.557756;
//+
MeshSize {4} = 3.557756;
//+
MeshSize {5} = 0.552550;
//+
MeshSize {6} = 0.552550;
//+
MeshSize {7} = 0.473057;
//+
MeshSize {8} = 0.473057;
//+
Cylinder(2) = {30.843094, 0.606273, 0.000000, 0.000000, 0.000000, 1.000000, 0.969397, 2*Pi};
//+
MeshSize {9} = 0.096940;
//+
MeshSize {10} = 0.096940;
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
