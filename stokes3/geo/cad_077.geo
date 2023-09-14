//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.168133, -3.876957, 0.000000, 30.972134, 8.774880, 1.000000};
//+
MeshSize {1} = 3.144783;
//+
MeshSize {2} = 3.144783;
//+
MeshSize {3} = 3.144783;
//+
MeshSize {4} = 3.144783;
//+
MeshSize {5} = 0.266001;
//+
MeshSize {6} = 0.266001;
//+
MeshSize {7} = 0.529190;
//+
MeshSize {8} = 0.529190;
//+
Cylinder(2) = {28.210675, -1.321714, 0.000000, 0.000000, 0.000000, 1.000000, 1.227379, 2*Pi};
//+
MeshSize {9} = 0.122738;
//+
MeshSize {10} = 0.122738;
//+
Cylinder(3) = {25.502278, 2.764412, 0.000000, 0.000000, 0.000000, 1.000000, 0.736269, 2*Pi};
//+
MeshSize {11} = 0.073627;
//+
MeshSize {12} = 0.073627;
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
Save "../geo_unrolled/cad_077.geo_unrolled";
