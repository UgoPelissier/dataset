//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.914741, -3.884222, 0.000000, 38.763121, 8.893217, 1.000000};
//+
MeshSize {1} = 0.211067;
//+
MeshSize {2} = 0.211067;
//+
MeshSize {3} = 0.179670;
//+
MeshSize {4} = 0.179670;
//+
MeshSize {5} = 5.690445;
//+
MeshSize {6} = 5.690445;
//+
MeshSize {7} = 6.067870;
//+
MeshSize {8} = 6.067870;
//+
Cylinder(2) = {5.320514, -2.286815, 0.000000, 0.000000, 0.000000, 1.000000, 0.703337, 2*Pi};
//+
MeshSize {9} = 0.070334;
//+
MeshSize {10} = 0.070334;
//+
Cylinder(3) = {3.668774, 1.997281, 0.000000, 0.000000, 0.000000, 1.000000, 0.690482, 2*Pi};
//+
MeshSize {11} = 0.069048;
//+
MeshSize {12} = 0.069048;
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
Save "../geo_unrolled/cad_132.geo_unrolled";
