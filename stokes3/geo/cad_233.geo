//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.188163, -3.686867, 0.000000, 37.054889, 8.897126, 1.000000};
//+
MeshSize {1} = 1.815977;
//+
MeshSize {2} = 1.815977;
//+
MeshSize {3} = 1.815977;
//+
MeshSize {4} = 3.750779;
//+
MeshSize {5} = 3.750779;
//+
MeshSize {6} = 1.865111;
//+
MeshSize {7} = 1.865111;
//+
MeshSize {8} = 1.865111;
//+
Cylinder(2) = {17.854104, 3.287255, 0.000000, 0.000000, 0.000000, 1.000000, 0.832964, 2*Pi};
//+
MeshSize {9} = 0.083296;
//+
MeshSize {10} = 0.083296;
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
