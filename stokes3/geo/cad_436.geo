//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.255534, -3.954075, 0.000000, 37.971544, 8.088651, 1.000000};
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
Cylinder(2) = {26.700933, 0.051238, 0.000000, 0.000000, 0.000000, 1.000000, 0.851856, 2*Pi};
//+
MeshSize {9} = 0.085186;
//+
MeshSize {10} = 0.085186;
//+
Cylinder(3) = {5.202408, -0.803512, 0.000000, 0.000000, 0.000000, 1.000000, 1.128296, 2*Pi};
//+
MeshSize {11} = 0.112830;
//+
MeshSize {12} = 0.112830;
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
Save "../geo_unrolled/cad_436.geo_unrolled";
