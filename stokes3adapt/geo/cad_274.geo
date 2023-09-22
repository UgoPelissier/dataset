//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.201707, -3.450624, 0.000000, 37.837392, 8.215016, 1.000000};
//+
MeshSize {1} = 0.668720;
//+
MeshSize {2} = 0.668720;
//+
MeshSize {3} = 0.578840;
//+
MeshSize {4} = 0.578840;
//+
MeshSize {5} = 2.609628;
//+
MeshSize {6} = 2.609628;
//+
MeshSize {7} = 2.603448;
//+
MeshSize {8} = 2.603448;
//+
Cylinder(2) = {15.030888, 0.707150, 0.000000, 0.000000, 0.000000, 1.000000, 1.017743, 2*Pi};
//+
MeshSize {9} = 0.101774;
//+
MeshSize {10} = 0.101774;
//+
Cylinder(3) = {10.821887, 2.709023, 0.000000, 0.000000, 0.000000, 1.000000, 1.415009, 2*Pi};
//+
MeshSize {11} = 0.141501;
//+
MeshSize {12} = 0.141501;
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
Save "../geo_unrolled/cad_274.geo_unrolled";
