//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.111552, -4.507505, 0.000000, 34.425685, 9.884540, 0.000000};
//+
l = [3.4889063842748906, 0.38043761575165247, 0.782654841401853, 3.4889063842748906];
//+
MeshSize {1} = 3.488906;
//+
MeshSize {2} = 0.380438;
//+
MeshSize {3} = 0.782655;
//+
MeshSize {4} = 3.488906;
//+
Disk(2) = {30.249541, -2.338790, 0.000000, 1.000586, 1.000586};
//+
c0 = 0.10005861130502983;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
