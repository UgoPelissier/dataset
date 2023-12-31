//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.547949, -3.202001, 0.000000, 33.290216, 8.351785, 0.100000};
//+
MeshSize {1} = 2.833317;
//+
MeshSize {2} = 2.833317;
//+
MeshSize {3} = 2.380035;
//+
MeshSize {4} = 2.380035;
//+
MeshSize {5} = 0.613129;
//+
MeshSize {6} = 0.613129;
//+
MeshSize {7} = 0.636700;
//+
MeshSize {8} = 0.636700;
//+
Cylinder(2) = {27.541414, 0.759764, 0.000000, 0.000000, 0.000000, 0.100000, 1.284314, 2*Pi};
//+
MeshSize {9} = 0.128431;
//+
MeshSize {10} = 0.128431;
//+
Cylinder(3) = {14.731570, 2.399692, 0.000000, 0.000000, 0.000000, 0.100000, 1.044527, 2*Pi};
//+
MeshSize {11} = 0.104453;
//+
MeshSize {12} = 0.104453;
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
Save "../msh/cad_352.msh2";
//+
Save "../mesh/cad_352.mesh";
//+
Save "../geo_unrolled/cad_352.geo_unrolled";
