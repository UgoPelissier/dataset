//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.868819, -4.095610, 0.000000, 36.251656, 8.548954, 0.000000};
//+
l = [1.1449602159265755, 0.7662646847153752, 3.7365770563790512, 3.7365770563790512, 3.7365770563790512, 3.7365770563790512, 0.9891181437966617, 0.6728110695770777];
//+
MeshSize {1} = 1.144960;
//+
MeshSize {2} = 0.766265;
//+
MeshSize {3} = 3.736577;
//+
MeshSize {4} = 3.736577;
//+
Disk(2) = {11.489466, 2.296509, 0.000000, 0.946258, 0.946258};
//+
c0 = 0.09462582341490726;
//+
MeshSize {5} = c0;
//+
Disk(3) = {7.529952, 1.047763, 0.000000, 0.753111, 0.753111};
//+
c1 = 0.07531109751180393;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
