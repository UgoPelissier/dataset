//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.712899, -4.296232, 0.000000, 34.621951, 9.934205, 0.100000};
//+
MeshSize {1} = 3.698863;
//+
MeshSize {2} = 3.698863;
//+
MeshSize {3} = 3.865439;
//+
MeshSize {4} = 3.865439;
//+
MeshSize {5} = 0.534151;
//+
MeshSize {6} = 0.534151;
//+
MeshSize {7} = 0.349929;
//+
MeshSize {8} = 0.349929;
//+
Cylinder(2) = {26.704063, -0.340789, 0.000000, 0.000000, 0.000000, 0.100000, 0.631795, 2*Pi};
//+
MeshSize {9} = 0.063180;
//+
MeshSize {10} = 0.063180;
//+
Cylinder(3) = {28.721968, 4.169277, 0.000000, 0.000000, 0.000000, 0.100000, 0.968276, 2*Pi};
//+
MeshSize {11} = 0.096828;
//+
MeshSize {12} = 0.096828;
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
Save "../msh/cad_348.msh2";
//+
Save "../mesh/cad_348.mesh";
//+
Save "../geo_unrolled/cad_348.geo_unrolled";
