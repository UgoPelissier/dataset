//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.757777, -4.915898, 0.000000, 38.513255, 9.964069, 1.000000};
//+
l = [3.9585788200431637, 3.9585788200431637, 1.6471164223429615, 1.6471164223429615, 1.6471164223429615, 0.6275680701257405, 0.6275680701257405, 0.6275680701257405, 0.6275680701257405, 0.6275680701257405, 0.6275680701257405, 0.6505394260847779, 0.6505394260847779, 0.6505394260847779, 0.6505394260847779, 0.6505394260847779, 0.6505394260847779, 3.9585788200431637, 3.9585788200431637, 1.7897377275739523, 1.7897377275739523, 1.7897377275739523];
//+
MeshSize {1} = 3.958579;
//+
MeshSize {2} = 3.958579;
//+
MeshSize {3} = 1.647116;
//+
MeshSize {4} = 1.647116;
//+
MeshSize {5} = 1.647116;
//+
MeshSize {6} = 0.627568;
//+
MeshSize {7} = 0.627568;
//+
MeshSize {8} = 0.627568;
//+
Cylinder(2) = {34.053051, -0.100210, 0.000000, 0.000000, 0.000000, 1.000000, 0.824896, 2*Pi};
//+
c0 = 0.08248956268040457;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {17.968262, -2.523063, 0.000000, 0.000000, 0.000000, 1.000000, 0.904867, 2*Pi};
//+
c1 = 0.09048667682425285;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
