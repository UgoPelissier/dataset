//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.685680, -3.653876, 0.000000, 39.092745, 8.396685, 0.000000};
//+
l = [3.99993649573645, 0.5711737137153824, 0.6761086942005985, 3.99993649573645];
//+
MeshSize {1} = 3.999936;
//+
MeshSize {2} = 0.571174;
//+
MeshSize {3} = 0.676109;
//+
MeshSize {4} = 3.999936;
//+
Disk(2) = {33.733425, -0.380224, 0.000000, 1.162769, 1.162769};
//+
c0 = 0.1162768738061978;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
