//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.059913, -3.565423, 0.000000, 34.782598, 8.010058, 1.000000};
//+
MeshSize {1} = 3.507194;
//+
MeshSize {2} = 3.507194;
//+
MeshSize {3} = 3.507194;
//+
MeshSize {4} = 3.507194;
//+
MeshSize {5} = 1.264116;
//+
MeshSize {6} = 1.264116;
//+
MeshSize {7} = 1.372081;
//+
MeshSize {8} = 1.372081;
//+
Cylinder(2) = {21.137567, -1.501225, 0.000000, 0.000000, 0.000000, 1.000000, 1.218363, 2*Pi};
//+
MeshSize {9} = 0.121836;
//+
MeshSize {10} = 0.121836;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
