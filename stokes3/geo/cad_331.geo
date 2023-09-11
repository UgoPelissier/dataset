//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.153127, -3.431204, 0.000000, 36.149986, 8.252791, 1.000000};
//+
MeshSize {1} = 3.653687;
//+
MeshSize {2} = 3.653687;
//+
MeshSize {3} = 0.576863;
//+
MeshSize {4} = 0.576863;
//+
MeshSize {5} = 0.576863;
//+
MeshSize {6} = 1.240714;
//+
MeshSize {7} = 1.240714;
//+
MeshSize {8} = 1.240714;
//+
Cylinder(2) = {24.020484, 1.340938, 0.000000, 0.000000, 0.000000, 1.000000, 0.769977, 2*Pi};
//+
MeshSize {9} = 0.076998;
//+
MeshSize {10} = 0.076998;
//+
Cylinder(3) = {3.808713, 1.805432, 0.000000, 0.000000, 0.000000, 1.000000, 0.617735, 2*Pi};
//+
MeshSize {11} = 0.061773;
//+
MeshSize {12} = 0.061773;
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
