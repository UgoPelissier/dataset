//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.504778, -4.040941, 0.000000, 34.973941, 9.743020, 0.000000};
//+
l = [3.581160634110767, 0.9095293053667279, 1.0108351990118585, 3.581160634110767];
//+
MeshSize {1} = 3.581161;
//+
MeshSize {2} = 0.909529;
//+
MeshSize {3} = 1.010835;
//+
MeshSize {4} = 3.581161;
//+
Disk(2) = {26.383943, -0.246747, 0.000000, 0.759192, 0.759192};
//+
c0 = 0.07591915484650194;
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
