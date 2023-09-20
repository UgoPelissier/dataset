//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.394697, -4.078549, 0.000000, 39.285881, 8.898901, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {23.034056, -2.133141, 0.000000, 0.000000, 0.000000, 1.000000, 1.003747, 2*Pi};
//+
MeshSize {9} = 0.100375;
//+
MeshSize {10} = 0.100375;
//+
Cylinder(3) = {36.915911, 3.362866, 0.000000, 0.000000, 0.000000, 1.000000, 0.631920, 2*Pi};
//+
MeshSize {11} = 0.063192;
//+
MeshSize {12} = 0.063192;
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
//+
Save "../geo_unrolled/cad_444.geo_unrolled";
