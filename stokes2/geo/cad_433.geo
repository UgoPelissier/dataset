//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.757777, -4.915898, 0.000000, 38.513255, 9.964069, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {34.053051, -0.100210, 0.000000, 0.824896, 0.824896};
//+
c0 = 0.08248956268040457;
//+
MeshSize {5} = c0;
//+
Disk(3) = {17.968262, -2.523063, 0.000000, 0.904867, 0.904867};
//+
c1 = 0.09048667682425285;
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
