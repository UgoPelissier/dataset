//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.235000, -3.851029, 0.000000, 37.777613, 8.620246, 1.000000};
//+
MeshSize {1} = 3.408932;
//+
MeshSize {2} = 3.408932;
//+
MeshSize {3} = 3.201970;
//+
MeshSize {4} = 3.201970;
//+
MeshSize {5} = 0.465264;
//+
MeshSize {6} = 0.465264;
//+
MeshSize {7} = 0.555811;
//+
MeshSize {8} = 0.555811;
//+
Cylinder(2) = {32.561195, -0.456286, 0.000000, 0.000000, 0.000000, 1.000000, 0.618707, 2*Pi};
//+
MeshSize {9} = 0.061871;
//+
MeshSize {10} = 0.061871;
//+
Cylinder(3) = {18.906461, 1.322113, 0.000000, 0.000000, 0.000000, 1.000000, 0.602643, 2*Pi};
//+
MeshSize {11} = 0.060264;
//+
MeshSize {12} = 0.060264;
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
Save "../geo_unrolled/cad_232.geo_unrolled";
