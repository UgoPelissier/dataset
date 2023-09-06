//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.662020, -3.181954, 0.000000, 31.334728, 7.564340, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {5.466075, -1.574809, 0.000000, 0.000000, 0.000000, 1.000000, 0.581936, 2*Pi};
//+
c0 = 0.058193600000000005;
//+
Cylinder(3) = {26.997866, -1.449680, 0.000000, 0.000000, 0.000000, 1.000000, 0.897467, 2*Pi};
//+
c1 = 0.08974670000000001;
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
Save "cad_310.msh";
