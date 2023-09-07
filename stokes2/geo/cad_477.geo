//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.547613, -3.092150, 0.000000, 37.769282, 7.529904, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {8.407352, -1.631753, 0.000000, 0.693080, 0.693080};
//+
c0 = 0.06930795314464104;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.449355, 1.566785, 0.000000, 0.619977, 0.619977};
//+
c1 = 0.06199771097778259;
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
