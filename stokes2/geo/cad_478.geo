//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.856441, -4.744964, 0.000000, 35.707505, 9.749743, 0.000000};
//+
l = [3.6887484877108414, 3.6887484877108414, 1.040452374952438, 0.5106546261263336, 1.2402346479281467, 0.29108791091369896, 3.6887484877108414, 3.6887484877108414];
//+
MeshSize {1} = 3.688748;
//+
MeshSize {2} = 3.688748;
//+
MeshSize {3} = 1.040452;
//+
MeshSize {4} = 0.510655;
//+
Disk(2) = {25.435842, -2.404913, 0.000000, 0.966956, 0.966956};
//+
c0 = 0.09669555772876579;
//+
MeshSize {5} = c0;
//+
Disk(3) = {34.230511, 1.353074, 0.000000, 1.422695, 1.422695};
//+
c1 = 0.1422695390844698;
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
