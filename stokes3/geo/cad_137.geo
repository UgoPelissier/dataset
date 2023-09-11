//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.310275, -3.620653, 0.000000, 33.020412, 7.920332, 1.000000};
//+
MeshSize {1} = 3.356512;
//+
MeshSize {2} = 3.356512;
//+
MeshSize {3} = 3.356512;
//+
MeshSize {4} = 3.356512;
//+
MeshSize {5} = 0.273821;
//+
MeshSize {6} = 0.273821;
//+
MeshSize {7} = 0.509732;
//+
MeshSize {8} = 0.509732;
//+
Cylinder(2) = {30.195026, -1.192998, 0.000000, 0.000000, 0.000000, 1.000000, 1.227379, 2*Pi};
//+
MeshSize {9} = 0.122738;
//+
MeshSize {10} = 0.122738;
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
Save "../geo_unrolled/cad_137.geo_unrolled";
