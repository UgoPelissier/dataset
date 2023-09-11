//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.845419, -3.135781, 0.000000, 37.919529, 7.952840, 1.000000};
//+
MeshSize {1} = 3.896836;
//+
MeshSize {2} = 3.896836;
//+
MeshSize {3} = 0.840080;
//+
MeshSize {4} = 0.840080;
//+
MeshSize {5} = 3.896836;
//+
MeshSize {6} = 3.896836;
//+
MeshSize {7} = 0.840080;
//+
MeshSize {8} = 0.840080;
//+
Cylinder(2) = {31.335408, 2.090946, 0.000000, 0.000000, 0.000000, 1.000000, 0.683068, 2*Pi};
//+
MeshSize {9} = 0.068307;
//+
MeshSize {10} = 0.068307;
//+
Cylinder(3) = {26.349015, -1.307189, 0.000000, 0.000000, 0.000000, 1.000000, 0.589300, 2*Pi};
//+
MeshSize {11} = 0.058930;
//+
MeshSize {12} = 0.058930;
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
Save "../geo_unrolled/cad_324.geo_unrolled";
