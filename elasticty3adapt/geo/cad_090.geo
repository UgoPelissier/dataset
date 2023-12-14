//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.451128, -3.466986, 0.000000, 29.815574, 7.633142, 1.000000};
//+
MeshSize {1} = 0.618024;
//+
MeshSize {2} = 0.618024;
//+
MeshSize {3} = 1.810835;
//+
MeshSize {4} = 1.810835;
//+
MeshSize {5} = 1.679713;
//+
MeshSize {6} = 1.679713;
//+
MeshSize {7} = 0.974384;
//+
MeshSize {8} = 0.974384;
//+
Cylinder(2) = {25.399099, 1.144671, 0.000000, 0.000000, 0.000000, 0.100000, 1.291381, 2*Pi};
//+
MeshSize {9} = 0.129138;
//+
MeshSize {10} = 0.129138;
//+
Cylinder(3) = {4.164686, -1.626780, 0.000000, 0.000000, 0.000000, 0.100000, 1.329762, 2*Pi};
//+
MeshSize {11} = 0.132976;
//+
MeshSize {12} = 0.132976;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; }
//+
Physical Volume("SOLID", 1) = {1, 2, 3};
//+
Physical Surface("WALLS", 2) = {13, 18};
//+
Physical Surface("LOAD", 3) = {8, 11};
//+
Physical Surface("BORDER", 4) = {7, 9, 10, 12, 14, 15, 16, 17};
//+
//+
//+
//+
//+
//+
Mesh 3;
//+
Save "../msh/cad_090.msh2";
//+
Save "../mesh/cad_090.mesh";
//+
Save "../geo_unrolled/cad_090.geo_unrolled";
