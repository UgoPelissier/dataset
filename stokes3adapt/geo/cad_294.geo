//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.799462, -3.741317, 0.000000, 33.837382, 9.478562, 1.000000};
//+
MeshSize {1} = 0.441634;
//+
MeshSize {2} = 0.441634;
//+
MeshSize {3} = 0.206771;
//+
MeshSize {4} = 0.206771;
//+
MeshSize {5} = 4.996497;
//+
MeshSize {6} = 4.996497;
//+
MeshSize {7} = 4.427256;
//+
MeshSize {8} = 4.427256;
//+
Cylinder(2) = {11.438771, 3.256325, 0.000000, 0.000000, 0.000000, 1.000000, 1.451644, 2*Pi};
//+
MeshSize {9} = 0.145164;
//+
MeshSize {10} = 0.145164;
//+
Cylinder(3) = {1.940991, 2.612793, 0.000000, 0.000000, 0.000000, 1.000000, 0.571385, 2*Pi};
//+
MeshSize {11} = 0.057138;
//+
MeshSize {12} = 0.057138;
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
Save "../geo_unrolled/cad_294.geo_unrolled";
