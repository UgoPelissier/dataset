//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.531166, -3.396551, 0.000000, 37.394028, 7.924959, 1.000000};
//+
MeshSize {1} = 1.024106;
//+
MeshSize {2} = 1.024106;
//+
MeshSize {3} = 1.024106;
//+
MeshSize {4} = 3.813164;
//+
MeshSize {5} = 3.813164;
//+
MeshSize {6} = 3.813164;
//+
MeshSize {7} = 3.813164;
//+
MeshSize {8} = 0.805055;
//+
Cylinder(2) = {9.133517, 3.271653, 0.000000, 0.000000, 0.000000, 1.000000, 0.643118, 2*Pi};
//+
MeshSize {9} = 0.064312;
//+
MeshSize {10} = 0.064312;
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
