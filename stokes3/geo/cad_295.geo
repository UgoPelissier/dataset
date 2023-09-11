//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.139793, -4.966252, 0.000000, 38.163930, 9.956418, 1.000000};
//+
MeshSize {1} = 0.865385;
//+
MeshSize {2} = 0.865385;
//+
MeshSize {3} = 1.446053;
//+
MeshSize {4} = 1.446053;
//+
MeshSize {5} = 0.865385;
//+
MeshSize {6} = 0.865385;
//+
MeshSize {7} = 3.862587;
//+
MeshSize {8} = 3.862587;
//+
Cylinder(2) = {5.006880, 3.222628, 0.000000, 0.000000, 0.000000, 1.000000, 0.872240, 2*Pi};
//+
MeshSize {9} = 0.087224;
//+
MeshSize {10} = 0.087224;
//+
Cylinder(3) = {24.142743, 1.440545, 0.000000, 0.000000, 0.000000, 1.000000, 1.082324, 2*Pi};
//+
MeshSize {11} = 0.108232;
//+
MeshSize {12} = 0.108232;
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
