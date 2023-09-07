//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.271956, -4.650234, 0.000000, 31.755170, 9.449842, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {18.726518, -3.256316, 0.000000, 0.664375, 0.664375};
//+
c0 = 0.06643749806997683;
//+
MeshSize {5} = c0;
//+
Disk(3) = {14.926406, -0.883442, 0.000000, 1.035925, 1.035925};
//+
c1 = 0.10359245490900237;
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
