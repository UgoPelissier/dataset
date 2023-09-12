//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.870037, -3.740635, 0.000000, 39.111469, 8.186388, 1.000000};
//+
MeshSize {1} = 4.019048;
//+
MeshSize {2} = 4.019048;
//+
MeshSize {3} = 1.342691;
//+
MeshSize {4} = 1.342691;
//+
MeshSize {5} = 4.019048;
//+
MeshSize {6} = 4.019048;
//+
MeshSize {7} = 1.342691;
//+
MeshSize {8} = 1.342691;
//+
Cylinder(2) = {25.488711, -1.118988, 0.000000, 0.000000, 0.000000, 1.000000, 1.301096, 2*Pi};
//+
MeshSize {9} = 0.130110;
//+
MeshSize {10} = 0.130110;
//+
Cylinder(3) = {24.291680, 2.302929, 0.000000, 0.000000, 0.000000, 1.000000, 0.534799, 2*Pi};
//+
MeshSize {11} = 0.053480;
//+
MeshSize {12} = 0.053480;
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
Save "../geo_unrolled/cad_098.geo_unrolled";
