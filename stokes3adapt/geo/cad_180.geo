//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.566886, -3.510943, 0.000000, 31.984275, 7.757262, 1.000000};
//+
MeshSize {1} = 0.679730;
//+
MeshSize {2} = 0.679730;
//+
MeshSize {3} = 0.731020;
//+
MeshSize {4} = 0.731020;
//+
MeshSize {5} = 2.347461;
//+
MeshSize {6} = 2.347461;
//+
MeshSize {7} = 2.001456;
//+
MeshSize {8} = 2.001456;
//+
Cylinder(2) = {18.681512, 1.728150, 0.000000, 0.000000, 0.000000, 1.000000, 0.728404, 2*Pi};
//+
MeshSize {9} = 0.072840;
//+
MeshSize {10} = 0.072840;
//+
Cylinder(3) = {7.960434, -0.219029, 0.000000, 0.000000, 0.000000, 1.000000, 0.882979, 2*Pi};
//+
MeshSize {11} = 0.088298;
//+
MeshSize {12} = 0.088298;
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
Save "../geo_unrolled/cad_180.geo_unrolled";
