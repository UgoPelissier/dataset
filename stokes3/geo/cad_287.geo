//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.321802, -3.672816, 0.000000, 36.881077, 8.178145, 1.000000};
//+
MeshSize {1} = 0.268110;
//+
MeshSize {2} = 0.268110;
//+
MeshSize {3} = 1.864498;
//+
MeshSize {4} = 1.864498;
//+
MeshSize {5} = 0.268110;
//+
MeshSize {6} = 0.268110;
//+
MeshSize {7} = 3.742693;
//+
MeshSize {8} = 3.742693;
//+
Cylinder(2) = {2.897623, -1.040193, 0.000000, 0.000000, 0.000000, 1.000000, 1.002041, 2*Pi};
//+
MeshSize {9} = 0.100204;
//+
MeshSize {10} = 0.100204;
//+
Cylinder(3) = {17.302843, -1.780326, 0.000000, 0.000000, 0.000000, 1.000000, 1.344847, 2*Pi};
//+
MeshSize {11} = 0.134485;
//+
MeshSize {12} = 0.134485;
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
Save "../geo_unrolled/cad_287.geo_unrolled";
