//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.258821, -3.017843, 0.000000, 29.959181, 7.661180, 1.000000};
//+
MeshSize {1} = 3.045983;
//+
MeshSize {2} = 3.045983;
//+
MeshSize {3} = 3.045983;
//+
MeshSize {4} = 3.045983;
//+
MeshSize {5} = 0.329046;
//+
MeshSize {6} = 0.329046;
//+
MeshSize {7} = 0.329046;
//+
MeshSize {8} = 0.329046;
//+
Cylinder(2) = {27.271628, -0.433383, 0.000000, 0.000000, 0.000000, 1.000000, 0.628792, 2*Pi};
//+
MeshSize {9} = 0.062879;
//+
MeshSize {10} = 0.062879;
//+
Cylinder(3) = {27.349648, 2.523257, 0.000000, 0.000000, 0.000000, 1.000000, 0.831550, 2*Pi};
//+
MeshSize {11} = 0.083155;
//+
MeshSize {12} = 0.083155;
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
