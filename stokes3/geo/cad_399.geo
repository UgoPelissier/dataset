//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.162598, -3.954143, 0.000000, 39.041742, 8.511406, 1.000000};
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
Cylinder(2) = {18.579355, -1.788866, 0.000000, 0.000000, 0.000000, 1.000000, 1.444010, 2*Pi};
//+
MeshSize {9} = 0.144401;
//+
MeshSize {10} = 0.144401;
//+
Cylinder(3) = {27.017552, 1.971586, 0.000000, 0.000000, 0.000000, 1.000000, 1.400174, 2*Pi};
//+
MeshSize {11} = 0.140017;
//+
MeshSize {12} = 0.140017;
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
Save "../geo_unrolled/cad_399.geo_unrolled";
