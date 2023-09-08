//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.531166, -3.396551, 0.000000, 37.394028, 7.924959, 0.000000};
//+
l = [1.0241062786806667, 3.813163568810843, 3.813163568810843, 0.8050550379690853];
//+
MeshSize {1} = 1.024106;
//+
MeshSize {2} = 3.813164;
//+
MeshSize {3} = 3.813164;
//+
MeshSize {4} = 0.805055;
//+
Disk(2) = {9.133517, 3.271653, 0.000000, 0.643118, 0.643118};
//+
c0 = 0.06431177201285097;
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
