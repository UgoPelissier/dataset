//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.947449, -3.533819, 0.000000, 33.169469, 8.356981, 1.000000};
//+
MeshSize {1} = 2.207253;
//+
MeshSize {2} = 2.207253;
//+
MeshSize {3} = 2.485296;
//+
MeshSize {4} = 2.485296;
//+
MeshSize {5} = 0.722837;
//+
MeshSize {6} = 0.722837;
//+
MeshSize {7} = 0.620602;
//+
MeshSize {8} = 0.620602;
//+
Cylinder(2) = {22.041276, -1.451554, 0.000000, 0.000000, 0.000000, 1.000000, 1.093357, 2*Pi};
//+
MeshSize {9} = 0.109336;
//+
MeshSize {10} = 0.109336;
//+
Cylinder(3) = {23.774837, 2.857318, 0.000000, 0.000000, 0.000000, 1.000000, 0.945256, 2*Pi};
//+
MeshSize {11} = 0.094526;
//+
MeshSize {12} = 0.094526;
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
Save "../geo_unrolled/cad_396.geo_unrolled";
