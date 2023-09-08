//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.884552, -3.939448, 0.000000, 32.902574, 8.865060, 0.000000};
//+
l = [0.31728686872209333, 0.31728686872209333, 3.4076636983958744, 1.2391589227857909, 3.4076636983958744, 1.1574096696579164, 0.4341200451546219, 0.4341200451546219];
//+
MeshSize {1} = 0.317287;
//+
MeshSize {2} = 0.317287;
//+
MeshSize {3} = 3.407664;
//+
MeshSize {4} = 1.239159;
//+
Disk(2) = {3.426979, -0.181829, 0.000000, 1.364051, 1.364051};
//+
c0 = 0.1364050720468577;
//+
MeshSize {5} = c0;
//+
Disk(3) = {21.994390, 1.659188, 0.000000, 0.662657, 0.662657};
//+
c1 = 0.06626565117484884;
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
