//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.313722, -4.313225, 0.000000, 31.264503, 8.790915, 1.000000};
//+
MeshSize {1} = 0.937133;
//+
MeshSize {2} = 0.937133;
//+
MeshSize {3} = 0.959477;
//+
MeshSize {4} = 0.959477;
//+
MeshSize {5} = 0.636974;
//+
MeshSize {6} = 0.636974;
//+
MeshSize {7} = 0.431519;
//+
MeshSize {8} = 0.431519;
//+
Cylinder(2) = {26.745507, 1.632942, 0.000000, 0.000000, 0.000000, 1.000000, 1.292642, 2*Pi};
//+
MeshSize {9} = 0.129264;
//+
MeshSize {10} = 0.129264;
//+
Cylinder(3) = {10.086057, -0.190187, 0.000000, 0.000000, 0.000000, 1.000000, 1.235172, 2*Pi};
//+
MeshSize {11} = 0.123517;
//+
MeshSize {12} = 0.123517;
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
Save "../geo_unrolled/cad_437.geo_unrolled";
