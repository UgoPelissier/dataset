//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.361779, -3.943545, 0.000000, 35.892308, 9.399976, 1.000000};
//+
MeshSize {1} = 0.685892;
//+
MeshSize {2} = 0.685892;
//+
MeshSize {3} = 0.685892;
//+
MeshSize {4} = 3.655747;
//+
MeshSize {5} = 3.655747;
//+
MeshSize {6} = 3.655747;
//+
MeshSize {7} = 3.655747;
//+
MeshSize {8} = 0.718572;
//+
Cylinder(2) = {7.379818, 0.462663, 0.000000, 0.000000, 0.000000, 1.000000, 1.427673, 2*Pi};
//+
MeshSize {9} = 0.142767;
//+
MeshSize {10} = 0.142767;
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
