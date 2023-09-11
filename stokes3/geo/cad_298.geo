//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.034649, -3.499705, 0.000000, 32.423198, 8.237763, 1.000000};
//+
MeshSize {1} = 1.334010;
//+
MeshSize {2} = 1.334010;
//+
MeshSize {3} = 1.334010;
//+
MeshSize {4} = 1.334010;
//+
MeshSize {5} = 1.334010;
//+
MeshSize {6} = 1.334010;
//+
MeshSize {7} = 3.271815;
//+
MeshSize {8} = 3.271815;
//+
Cylinder(2) = {13.372380, 0.417561, 0.000000, 0.000000, 0.000000, 1.000000, 0.560979, 2*Pi};
//+
MeshSize {9} = 0.056098;
//+
MeshSize {10} = 0.056098;
//+
Cylinder(3) = {28.713917, 0.212650, 0.000000, 0.000000, 0.000000, 1.000000, 1.130754, 2*Pi};
//+
MeshSize {11} = 0.113075;
//+
MeshSize {12} = 0.113075;
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
