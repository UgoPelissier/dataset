//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.868819, -4.095610, 0.000000, 36.251656, 8.548954, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {11.489466, 2.296509, 0.000000, 0.000000, 0.000000, 1.000000, 0.946258, 2*Pi};
//+
c0 = 0.09462582341490726;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {7.529952, 1.047763, 0.000000, 0.000000, 0.000000, 1.000000, 0.753111, 2*Pi};
//+
c1 = 0.07531109751180393;
//+
MeshSize {11, 12} = c1;
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
