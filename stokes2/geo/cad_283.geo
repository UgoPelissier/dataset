//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.698676, -3.092424, 0.000000, 37.766005, 7.644765, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {3.316148, -0.500858, 0.000000, 0.953372, 0.953372};
//+
c0 = 0.09533718422971427;
//+
MeshSize {5} = c0;
//+
Disk(3) = {20.117235, 2.163370, 0.000000, 1.220766, 1.220766};
//+
c1 = 0.1220765518093459;
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
