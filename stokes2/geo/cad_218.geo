//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.205401, -3.804822, 0.000000, 30.704015, 8.775938, 0.000000};
//+
l = [3.1219325722623474, 0.5805838139729319, 0.6981018083850196, 3.1219325722623474];
//+
MeshSize {1} = 3.121933;
//+
MeshSize {2} = 0.580584;
//+
MeshSize {3} = 0.698102;
//+
MeshSize {4} = 3.121933;
//+
Disk(2) = {24.996200, -0.408675, 0.000000, 1.013248, 1.013248};
//+
c0 = 0.10132478432016417;
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
