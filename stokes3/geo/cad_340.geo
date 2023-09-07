//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.235000, -3.851029, 0.000000, 37.777613, 8.620246, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {32.561195, -0.456286, 0.000000, 0.000000, 0.000000, 1.000000, 0.618707, 2*Pi};
//+
c0 = 0.06187068520536329;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {18.906461, 1.322113, 0.000000, 0.000000, 0.000000, 1.000000, 0.602643, 2*Pi};
//+
c1 = 0.06026433214801524;
//+
MeshSize {11, 12} = c1;
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
