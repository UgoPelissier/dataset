//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.258821, -3.017843, 0.000000, 29.959181, 7.661180, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {27.271628, -0.433383, 0.000000, 0.000000, 0.000000, 1.000000, 0.628792, 2*Pi};
//+
c0 = 0.06287920000000001;
//+
Cylinder(3) = {27.349648, 2.523257, 0.000000, 0.000000, 0.000000, 1.000000, 0.831550, 2*Pi};
//+
c1 = 0.083155;
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
Save "cad_296.msh";