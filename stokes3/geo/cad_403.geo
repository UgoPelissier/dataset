//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.470147, -4.579371, 0.000000, 37.945246, 9.543127, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {9.563987, 2.588338, 0.000000, 0.000000, 0.000000, 1.000000, 0.942961, 2*Pi};
//+
c0 = 0.09429609421429201;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {29.618113, 0.201733, 0.000000, 0.000000, 0.000000, 1.000000, 1.482116, 2*Pi};
//+
c1 = 0.1482115851405614;
//+
MeshSize {11, 12} = c1;
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
