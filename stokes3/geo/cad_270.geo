//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.993958, -3.987747, 0.000000, 31.375503, 9.526757, 1.000000};
//+
MeshSize {1} = 3.271806;
//+
MeshSize {2} = 3.271806;
//+
MeshSize {3} = 0.525907;
//+
MeshSize {4} = 0.525907;
//+
MeshSize {5} = 0.525907;
//+
MeshSize {6} = 1.237226;
//+
MeshSize {7} = 1.237226;
//+
MeshSize {8} = 1.237226;
//+
Cylinder(2) = {19.030779, -1.423004, 0.000000, 0.000000, 0.000000, 1.000000, 1.210754, 2*Pi};
//+
MeshSize {9} = 0.121075;
//+
MeshSize {10} = 0.121075;
//+
Cylinder(3) = {6.688167, -2.791885, 0.000000, 0.000000, 0.000000, 1.000000, 0.559358, 2*Pi};
//+
MeshSize {11} = 0.055936;
//+
MeshSize {12} = 0.055936;
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
