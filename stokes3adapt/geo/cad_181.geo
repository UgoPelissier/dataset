//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.150085, -3.509921, 0.000000, 38.424767, 8.882162, 1.000000};
//+
MeshSize {1} = 2.562162;
//+
MeshSize {2} = 2.562162;
//+
MeshSize {3} = 3.408034;
//+
MeshSize {4} = 3.408034;
//+
MeshSize {5} = 0.678866;
//+
MeshSize {6} = 0.678866;
//+
MeshSize {7} = 0.447890;
//+
MeshSize {8} = 0.447890;
//+
Cylinder(2) = {35.255396, 2.137633, 0.000000, 0.000000, 0.000000, 1.000000, 0.919369, 2*Pi};
//+
MeshSize {9} = 0.091937;
//+
MeshSize {10} = 0.091937;
//+
Cylinder(3) = {12.413465, -0.743822, 0.000000, 0.000000, 0.000000, 1.000000, 1.220288, 2*Pi};
//+
MeshSize {11} = 0.122029;
//+
MeshSize {12} = 0.122029;
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
Save "../geo_unrolled/cad_181.geo_unrolled";
