//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.271956, -4.650234, 0.000000, 31.755170, 9.449842, 0.000000};
//+
l = [3.2373781015884777, 1.4094892664349352, 1.2709075755124584, 1.2709075755124584, 1.488567646619867, 1.488567646619867, 3.2373781015884777, 1.4681898693604385];
//+
MeshSize {1} = 3.237378;
//+
MeshSize {2} = 1.409489;
//+
MeshSize {3} = 1.270908;
//+
MeshSize {4} = 1.270908;
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
