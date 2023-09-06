//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.166809, -3.991494, 0.000000, 33.848763, 8.343782, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {11.984505, -1.542306, 0.000000, 0.000000, 0.000000, 1.000000, 1.491463, 2*Pi};
//+
c0 = 0.1491463;
//+
Cylinder(3) = {14.646699, 1.884591, 0.000000, 0.000000, 0.000000, 1.000000, 1.108413, 2*Pi};
//+
c1 = 0.11084130000000002;
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
Save "cad_413.msh";
