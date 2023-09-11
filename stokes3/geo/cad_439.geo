//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.868819, -4.095610, 0.000000, 36.251656, 8.548954, 1.000000};
//+
MeshSize {1} = 1.144960;
//+
MeshSize {2} = 1.144960;
//+
MeshSize {3} = 3.736577;
//+
MeshSize {4} = 3.736577;
//+
MeshSize {5} = 0.766265;
//+
MeshSize {6} = 0.766265;
//+
MeshSize {7} = 3.736577;
//+
MeshSize {8} = 3.736577;
//+
Cylinder(2) = {11.489466, 2.296509, 0.000000, 0.000000, 0.000000, 1.000000, 0.946258, 2*Pi};
//+
MeshSize {9} = 0.094626;
//+
MeshSize {10} = 0.094626;
//+
Cylinder(3) = {7.529952, 1.047763, 0.000000, 0.000000, 0.000000, 1.000000, 0.753111, 2*Pi};
//+
MeshSize {11} = 0.075311;
//+
MeshSize {12} = 0.075311;
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
