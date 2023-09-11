//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072920, -3.736008, 0.000000, 32.433044, 8.614705, 1.000000};
//+
MeshSize {1} = 3.279010;
//+
MeshSize {2} = 3.279010;
//+
MeshSize {3} = 1.433131;
//+
MeshSize {4} = 1.433131;
//+
MeshSize {5} = 1.433131;
//+
MeshSize {6} = 0.483021;
//+
MeshSize {7} = 0.483021;
//+
MeshSize {8} = 0.483021;
//+
Cylinder(2) = {30.324609, 1.418031, 0.000000, 0.000000, 0.000000, 1.000000, 0.766436, 2*Pi};
//+
MeshSize {9} = 0.076644;
//+
MeshSize {10} = 0.076644;
//+
Cylinder(3) = {14.174475, 2.963882, 0.000000, 0.000000, 0.000000, 1.000000, 1.280937, 2*Pi};
//+
MeshSize {11} = 0.128094;
//+
MeshSize {12} = 0.128094;
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
