//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.139793, -4.966252, 0.000000, 38.163930, 9.956418, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {5.006880, 3.222628, 0.000000, 0.000000, 0.000000, 1.000000, 0.872240, 2*Pi};
//+
c0 = 0.08722400000000001;
//+
Cylinder(3) = {24.142743, 1.440545, 0.000000, 0.000000, 0.000000, 1.000000, 1.082324, 2*Pi};
//+
c1 = 0.1082324;
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
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_295.msh";
