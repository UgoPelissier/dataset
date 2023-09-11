//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.382480, -3.349937, 0.000000, 38.685193, 8.439114, 1.000000};
//+
MeshSize {1} = 3.929488;
//+
MeshSize {2} = 3.929488;
//+
MeshSize {3} = 3.929488;
//+
MeshSize {4} = 3.929488;
//+
MeshSize {5} = 1.222230;
//+
MeshSize {6} = 1.222230;
//+
MeshSize {7} = 1.190297;
//+
MeshSize {8} = 1.190297;
//+
Cylinder(2) = {26.672686, 1.365386, 0.000000, 0.000000, 0.000000, 1.000000, 1.039300, 2*Pi};
//+
MeshSize {9} = 0.103930;
//+
MeshSize {10} = 0.103930;
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
//+
Save "../geo_unrolled/cad_222.geo_unrolled";
