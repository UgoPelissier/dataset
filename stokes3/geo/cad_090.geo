//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.451128, -3.466986, 0.000000, 29.815574, 7.633142, 1.000000};
//+
MeshSize {1} = 0.281474;
//+
MeshSize {2} = 0.281474;
//+
MeshSize {3} = 0.555127;
//+
MeshSize {4} = 0.555127;
//+
MeshSize {5} = 0.541391;
//+
MeshSize {6} = 0.541391;
//+
MeshSize {7} = 0.443775;
//+
MeshSize {8} = 0.443775;
//+
Cylinder(2) = {25.399099, 1.144671, 0.000000, 0.000000, 0.000000, 1.000000, 1.291381, 2*Pi};
//+
MeshSize {9} = 0.129138;
//+
MeshSize {10} = 0.129138;
//+
Cylinder(3) = {4.164686, -1.626780, 0.000000, 0.000000, 0.000000, 1.000000, 1.329762, 2*Pi};
//+
MeshSize {11} = 0.132976;
//+
MeshSize {12} = 0.132976;
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
Save "../geo_unrolled/cad_090.geo_unrolled";
