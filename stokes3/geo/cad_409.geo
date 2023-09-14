//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.580047, -3.574399, 0.000000, 29.548930, 8.795427, 1.000000};
//+
MeshSize {1} = 1.036004;
//+
MeshSize {2} = 1.036004;
//+
MeshSize {3} = 1.108726;
//+
MeshSize {4} = 1.108726;
//+
MeshSize {5} = 1.230718;
//+
MeshSize {6} = 1.230718;
//+
MeshSize {7} = 1.084746;
//+
MeshSize {8} = 1.084746;
//+
Cylinder(2) = {11.238536, -0.132820, 0.000000, 0.000000, 0.000000, 1.000000, 0.840313, 2*Pi};
//+
MeshSize {9} = 0.084031;
//+
MeshSize {10} = 0.084031;
//+
Cylinder(3) = {18.481969, 2.914947, 0.000000, 0.000000, 0.000000, 1.000000, 1.025653, 2*Pi};
//+
MeshSize {11} = 0.102565;
//+
MeshSize {12} = 0.102565;
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
Save "../geo_unrolled/cad_409.geo_unrolled";
