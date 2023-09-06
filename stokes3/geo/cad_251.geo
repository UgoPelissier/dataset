//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.132507, -4.256033, 0.000000, 34.355930, 8.886850, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {3.209641, 0.871301, 0.000000, 0.000000, 0.000000, 1.000000, 0.824430, 2*Pi};
//+
c0 = 0.082443;
//+
Cylinder(3) = {13.286254, -1.849821, 0.000000, 0.000000, 0.000000, 1.000000, 0.887800, 2*Pi};
//+
c1 = 0.08878000000000001;
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
Save "cad_251.msh";
