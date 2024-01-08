//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.813185, -4.003352, 0.000000, 37.476405, 9.346937, 0.100000};
//+
MeshSize {1} = 1.293250;
//+
MeshSize {2} = 1.293250;
//+
MeshSize {3} = 1.613797;
//+
MeshSize {4} = 1.613797;
//+
MeshSize {5} = 0.857480;
//+
MeshSize {6} = 0.857480;
//+
MeshSize {7} = 0.880060;
//+
MeshSize {8} = 0.880060;
//+
Cylinder(2) = {26.244238, 0.246697, 0.000000, 0.000000, 0.000000, 0.100000, 1.146025, 2*Pi};
//+
MeshSize {9} = 0.114602;
//+
MeshSize {10} = 0.114602;
//+
Cylinder(3) = {16.212056, -1.291484, 0.000000, 0.000000, 0.000000, 0.100000, 0.862598, 2*Pi};
//+
MeshSize {11} = 0.086260;
//+
MeshSize {12} = 0.086260;
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
Save "../msh/cad_085.msh2";
//+
Save "../mesh/cad_085.mesh";
//+
Save "../geo_unrolled/cad_085.geo_unrolled";
