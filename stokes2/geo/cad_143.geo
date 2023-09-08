//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.791818, -3.866393, 0.000000, 33.705519, 9.524540, 0.000000};
//+
l = [3.482449536150579, 1.1228888538775692, 1.3109715822870989, 3.482449536150579];
//+
MeshSize {1} = 3.482450;
//+
MeshSize {2} = 1.122889;
//+
MeshSize {3} = 1.310972;
//+
MeshSize {4} = 3.482450;
//+
Disk(2) = {22.486656, -1.699875, 0.000000, 0.975629, 0.975629};
//+
c0 = 0.09756290279430696;
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
