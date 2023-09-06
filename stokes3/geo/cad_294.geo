//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.248219, -4.240736, 0.000000, 34.886378, 9.192958, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {14.208158, -0.439413, 0.000000, 0.000000, 0.000000, 1.000000, 1.248078, 2*Pi};
//+
c0 = 0.12480780000000001;
//+
Cylinder(3) = {8.778471, -0.348935, 0.000000, 0.000000, 0.000000, 1.000000, 1.303897, 2*Pi};
//+
c1 = 0.13038970000000003;
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
Save "cad_294.msh";
