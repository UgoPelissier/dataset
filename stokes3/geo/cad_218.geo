//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.205401, -3.804822, 0.000000, 30.704015, 8.775938, 1.000000};
//+
MeshSize {1} = 3.121933;
//+
MeshSize {2} = 3.121933;
//+
MeshSize {3} = 3.121933;
//+
MeshSize {4} = 3.121933;
//+
MeshSize {5} = 0.580584;
//+
MeshSize {6} = 0.580584;
//+
MeshSize {7} = 0.698102;
//+
MeshSize {8} = 0.698102;
//+
Cylinder(2) = {24.996200, -0.408675, 0.000000, 0.000000, 0.000000, 1.000000, 1.013248, 2*Pi};
//+
MeshSize {9} = 0.101325;
//+
MeshSize {10} = 0.101325;
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
