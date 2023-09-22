//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.778970, -3.882531, 0.000000, 37.699951, 9.146013, 1.000000};
//+
MeshSize {1} = 0.996351;
//+
MeshSize {2} = 0.996351;
//+
MeshSize {3} = 1.109136;
//+
MeshSize {4} = 1.109136;
//+
MeshSize {5} = 0.883507;
//+
MeshSize {6} = 0.883507;
//+
MeshSize {7} = 1.277331;
//+
MeshSize {8} = 1.277331;
//+
Cylinder(2) = {11.607141, 0.162334, 0.000000, 0.000000, 0.000000, 1.000000, 1.009523, 2*Pi};
//+
MeshSize {9} = 0.100952;
//+
MeshSize {10} = 0.100952;
//+
Cylinder(3) = {28.776216, -1.869975, 0.000000, 0.000000, 0.000000, 1.000000, 0.554569, 2*Pi};
//+
MeshSize {11} = 0.055457;
//+
MeshSize {12} = 0.055457;
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
Save "../geo_unrolled/cad_173.geo_unrolled";
