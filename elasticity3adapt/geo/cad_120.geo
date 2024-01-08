//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.413301, -3.996100, 0.000000, 30.592148, 9.426915, 0.100000};
//+
MeshSize {1} = 0.345788;
//+
MeshSize {2} = 0.345788;
//+
MeshSize {3} = 0.348500;
//+
MeshSize {4} = 0.348500;
//+
MeshSize {5} = 4.612711;
//+
MeshSize {6} = 4.612711;
//+
MeshSize {7} = 4.419647;
//+
MeshSize {8} = 4.419647;
//+
Cylinder(2) = {9.957949, 1.375367, 0.000000, 0.000000, 0.000000, 0.100000, 1.407937, 2*Pi};
//+
MeshSize {9} = 0.140794;
//+
MeshSize {10} = 0.140794;
//+
Cylinder(3) = {2.773770, 0.698849, 0.000000, 0.000000, 0.000000, 0.100000, 1.035152, 2*Pi};
//+
MeshSize {11} = 0.103515;
//+
MeshSize {12} = 0.103515;
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
Save "../msh/cad_120.msh2";
//+
Save "../mesh/cad_120.mesh";
//+
Save "../geo_unrolled/cad_120.geo_unrolled";
