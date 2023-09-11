//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.247512, -4.575603, 0.000000, 32.508985, 9.843526, 1.000000};
//+
MeshSize {1} = 1.390072;
//+
MeshSize {2} = 1.390072;
//+
MeshSize {3} = 1.235930;
//+
MeshSize {4} = 1.235930;
//+
MeshSize {5} = 3.312419;
//+
MeshSize {6} = 3.312419;
//+
MeshSize {7} = 3.312419;
//+
MeshSize {8} = 3.312419;
//+
Cylinder(2) = {13.732854, 2.618904, 0.000000, 0.000000, 0.000000, 1.000000, 1.383757, 2*Pi};
//+
MeshSize {9} = 0.138376;
//+
MeshSize {10} = 0.138376;
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
Save "../geo_unrolled/cad_225.geo_unrolled";
