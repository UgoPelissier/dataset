//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.953005, -3.836446, 0.000000, 36.130666, 8.596137, 1.000000};
//+
MeshSize {1} = 0.996021;
//+
MeshSize {2} = 0.996021;
//+
MeshSize {3} = 0.717129;
//+
MeshSize {4} = 0.717129;
//+
MeshSize {5} = 0.996021;
//+
MeshSize {6} = 0.996021;
//+
MeshSize {7} = 3.733192;
//+
MeshSize {8} = 3.733192;
//+
Cylinder(2) = {10.803631, 1.657639, 0.000000, 0.000000, 0.000000, 1.000000, 1.318966, 2*Pi};
//+
MeshSize {9} = 0.131897;
//+
MeshSize {10} = 0.131897;
//+
Cylinder(3) = {29.505876, -0.781031, 0.000000, 0.000000, 0.000000, 1.000000, 0.999303, 2*Pi};
//+
MeshSize {11} = 0.099930;
//+
MeshSize {12} = 0.099930;
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
