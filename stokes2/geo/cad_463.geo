//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.817034, -3.657904, 0.000000, 38.215526, 9.090332, 0.000000};
//+
l = [1.9017842361011834, 0.7825817152754211, 1.741038954629833, 1.741038954629833, 1.83161757245148, 1.83161757245148, 3.92963010731061, 0.6982336349521658];
//+
MeshSize {1} = 1.901784;
//+
MeshSize {2} = 0.782582;
//+
MeshSize {3} = 1.741039;
//+
MeshSize {4} = 1.741039;
//+
Disk(2) = {20.736275, -1.000094, 0.000000, 1.077931, 1.077931};
//+
c0 = 0.10779314148959501;
//+
MeshSize {5} = c0;
//+
Disk(3) = {7.637369, 1.650048, 0.000000, 0.816598, 0.816598};
//+
c1 = 0.0816597717253382;
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
