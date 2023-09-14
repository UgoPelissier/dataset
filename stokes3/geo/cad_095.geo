//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.199470, -4.352324, 0.000000, 39.134240, 8.788459, 1.000000};
//+
MeshSize {1} = 0.428938;
//+
MeshSize {2} = 0.428938;
//+
MeshSize {3} = 0.591624;
//+
MeshSize {4} = 0.591624;
//+
MeshSize {5} = 0.898422;
//+
MeshSize {6} = 0.898422;
//+
MeshSize {7} = 1.119716;
//+
MeshSize {8} = 1.119716;
//+
Cylinder(2) = {29.629726, -2.714725, 0.000000, 0.000000, 0.000000, 1.000000, 0.856974, 2*Pi};
//+
MeshSize {9} = 0.085697;
//+
MeshSize {10} = 0.085697;
//+
Cylinder(3) = {4.896064, -1.159908, 0.000000, 0.000000, 0.000000, 1.000000, 1.389487, 2*Pi};
//+
MeshSize {11} = 0.138949;
//+
MeshSize {12} = 0.138949;
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
Save "../geo_unrolled/cad_095.geo_unrolled";
