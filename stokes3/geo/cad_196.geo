//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.583702, -3.813300, 0.000000, 36.669540, 9.220109, 1.000000};
//+
MeshSize {1} = 3.753740;
//+
MeshSize {2} = 3.753740;
//+
MeshSize {3} = 3.753740;
//+
MeshSize {4} = 3.753740;
//+
MeshSize {5} = 0.921080;
//+
MeshSize {6} = 0.921080;
//+
MeshSize {7} = 0.750088;
//+
MeshSize {8} = 0.750088;
//+
Cylinder(2) = {29.165712, 2.546244, 0.000000, 0.000000, 0.000000, 1.000000, 1.077634, 2*Pi};
//+
MeshSize {9} = 0.107763;
//+
MeshSize {10} = 0.107763;
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
Save "../geo_unrolled/cad_196.geo_unrolled";
