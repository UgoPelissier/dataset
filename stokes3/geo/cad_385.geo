//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.586827, -3.807092, 0.000000, 30.575856, 7.668886, 1.000000};
//+
MeshSize {1} = 0.554502;
//+
MeshSize {2} = 0.554502;
//+
MeshSize {3} = 1.513694;
//+
MeshSize {4} = 1.513694;
//+
MeshSize {5} = 0.554502;
//+
MeshSize {6} = 0.554502;
//+
MeshSize {7} = 3.139770;
//+
MeshSize {8} = 3.139770;
//+
Cylinder(2) = {7.165240, -1.413140, 0.000000, 0.000000, 0.000000, 1.000000, 1.455446, 2*Pi};
//+
MeshSize {9} = 0.145545;
//+
MeshSize {10} = 0.145545;
//+
Cylinder(3) = {14.850747, -1.123201, 0.000000, 0.000000, 0.000000, 1.000000, 1.394316, 2*Pi};
//+
MeshSize {11} = 0.139432;
//+
MeshSize {12} = 0.139432;
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
