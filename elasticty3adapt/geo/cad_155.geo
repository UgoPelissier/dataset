//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.438166, -3.428567, 0.000000, 32.750929, 8.250660, 1.000000};
//+
MeshSize {1} = 0.575588;
//+
MeshSize {2} = 0.575588;
//+
MeshSize {3} = 0.607018;
//+
MeshSize {4} = 0.607018;
//+
MeshSize {5} = 2.980879;
//+
MeshSize {6} = 2.980879;
//+
MeshSize {7} = 2.617886;
//+
MeshSize {8} = 2.617886;
//+
Cylinder(2) = {21.505535, 1.461516, 0.000000, 0.000000, 0.000000, 0.100000, 0.664354, 2*Pi};
//+
MeshSize {9} = 0.066435;
//+
MeshSize {10} = 0.066435;
//+
Cylinder(3) = {5.314759, 0.493793, 0.000000, 0.000000, 0.000000, 0.100000, 1.458463, 2*Pi};
//+
MeshSize {11} = 0.145846;
//+
MeshSize {12} = 0.145846;
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
Save "../msh/cad_155.msh2";
//+
Save "../mesh/cad_155.mesh";
//+
Save "../geo_unrolled/cad_155.geo_unrolled";
