//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.538618, -3.582343, 0.000000, 38.324740, 7.691156, 1.000000};
//+
MeshSize {1} = 3.905316;
//+
MeshSize {2} = 3.905316;
//+
MeshSize {3} = 0.837791;
//+
MeshSize {4} = 0.837791;
//+
MeshSize {5} = 3.905316;
//+
MeshSize {6} = 3.905316;
//+
MeshSize {7} = 0.837791;
//+
MeshSize {8} = 0.837791;
//+
Cylinder(2) = {30.126768, -1.032010, 0.000000, 0.000000, 0.000000, 1.000000, 0.723307, 2*Pi};
//+
MeshSize {9} = 0.072331;
//+
MeshSize {10} = 0.072331;
//+
Cylinder(3) = {30.008142, 1.793784, 0.000000, 0.000000, 0.000000, 1.000000, 0.790999, 2*Pi};
//+
MeshSize {11} = 0.079100;
//+
MeshSize {12} = 0.079100;
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
Save "../geo_unrolled/cad_259.geo_unrolled";
