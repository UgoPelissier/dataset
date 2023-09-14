//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.696072, -4.171959, 0.000000, 36.359290, 8.621504, 1.000000};
//+
MeshSize {1} = 3.730526;
//+
MeshSize {2} = 3.730526;
//+
MeshSize {3} = 3.730526;
//+
MeshSize {4} = 3.730526;
//+
MeshSize {5} = 0.560026;
//+
MeshSize {6} = 0.560026;
//+
MeshSize {7} = 0.452597;
//+
MeshSize {8} = 0.452597;
//+
Cylinder(2) = {30.939860, 0.420766, 0.000000, 0.000000, 0.000000, 1.000000, 1.227235, 2*Pi};
//+
MeshSize {9} = 0.122723;
//+
MeshSize {10} = 0.122723;
//+
Cylinder(3) = {33.540545, 0.834036, 0.000000, 0.000000, 0.000000, 1.000000, 0.516435, 2*Pi};
//+
MeshSize {11} = 0.051644;
//+
MeshSize {12} = 0.051644;
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
Save "../geo_unrolled/cad_091.geo_unrolled";
