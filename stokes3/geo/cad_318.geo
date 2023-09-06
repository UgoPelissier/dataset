//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.192763, -3.228933, 0.000000, 38.177004, 8.123726, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {10.512453, 2.628076, 0.000000, 0.000000, 0.000000, 1.000000, 1.005126, 2*Pi};
//+
c0 = 0.10051260000000001;
//+
Cylinder(3) = {14.291463, 0.763984, 0.000000, 0.000000, 0.000000, 1.000000, 0.677584, 2*Pi};
//+
c1 = 0.0677584;
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
Save "cad_318.msh";
