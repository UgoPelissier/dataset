//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.515376, -4.044610, 0.000000, 30.920393, 8.573097, 1.000000};
//+
MeshSize {1} = 0.452570;
//+
MeshSize {2} = 0.452570;
//+
MeshSize {3} = 0.456986;
//+
MeshSize {4} = 0.456986;
//+
MeshSize {5} = 2.999292;
//+
MeshSize {6} = 2.999292;
//+
MeshSize {7} = 4.478318;
//+
MeshSize {8} = 4.478318;
//+
Cylinder(2) = {19.327012, -2.224168, 0.000000, 0.000000, 0.000000, 0.100000, 0.916568, 2*Pi};
//+
MeshSize {9} = 0.091657;
//+
MeshSize {10} = 0.091657;
//+
Cylinder(3) = {2.127552, 0.223410, 0.000000, 0.000000, 0.000000, 0.100000, 1.007328, 2*Pi};
//+
MeshSize {11} = 0.100733;
//+
MeshSize {12} = 0.100733;
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
Save "../msh/cad_092.msh2";
//+
Save "../mesh/cad_092.mesh";
//+
Save "../geo_unrolled/cad_092.geo_unrolled";
