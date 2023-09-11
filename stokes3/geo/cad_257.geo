//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.633336, -4.402024, 0.000000, 35.953294, 9.288091, 1.000000};
//+
MeshSize {1} = 1.624834;
//+
MeshSize {2} = 1.624834;
//+
MeshSize {3} = 0.579069;
//+
MeshSize {4} = 0.579069;
//+
MeshSize {5} = 1.624834;
//+
MeshSize {6} = 1.624834;
//+
MeshSize {7} = 1.836176;
//+
MeshSize {8} = 1.836176;
//+
Cylinder(2) = {17.533582, -0.921331, 0.000000, 0.000000, 0.000000, 1.000000, 1.006613, 2*Pi};
//+
MeshSize {9} = 0.100661;
//+
MeshSize {10} = 0.100661;
//+
Cylinder(3) = {33.674048, 1.780609, 0.000000, 0.000000, 0.000000, 1.000000, 1.043645, 2*Pi};
//+
MeshSize {11} = 0.104365;
//+
MeshSize {12} = 0.104365;
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
