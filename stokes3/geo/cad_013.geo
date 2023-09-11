//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.111552, -4.507505, 0.000000, 34.425685, 9.884540, 1.000000};
//+
l = [3.4889063842748906, 3.4889063842748906, 0.38043761575165247, 0.38043761575165247, 0.38043761575165247, 0.782654841401853, 0.782654841401853, 0.782654841401853, 3.4889063842748906, 3.4889063842748906];
//+
MeshSize {1} = 3.488906;
//+
MeshSize {2} = 3.488906;
//+
MeshSize {3} = 0.380438;
//+
MeshSize {4} = 0.380438;
//+
MeshSize {5} = 0.380438;
//+
MeshSize {6} = 0.782655;
//+
MeshSize {7} = 0.782655;
//+
MeshSize {8} = 0.782655;
//+
Cylinder(2) = {30.249541, -2.338790, 0.000000, 0.000000, 0.000000, 1.000000, 1.000586, 2*Pi};
//+
c0 = 0.10005861130502983;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
