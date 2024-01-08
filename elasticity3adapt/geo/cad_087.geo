//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.376720, -4.551625, 0.000000, 37.936731, 9.427745, 0.100000};
//+
MeshSize {1} = 0.867264;
//+
MeshSize {2} = 0.867264;
//+
MeshSize {3} = 0.832524;
//+
MeshSize {4} = 0.832524;
//+
MeshSize {5} = 1.419625;
//+
MeshSize {6} = 1.419625;
//+
MeshSize {7} = 1.627711;
//+
MeshSize {8} = 1.627711;
//+
Cylinder(2) = {15.741411, 1.662705, 0.000000, 0.000000, 0.000000, 0.100000, 0.737530, 2*Pi};
//+
MeshSize {9} = 0.073753;
//+
MeshSize {10} = 0.073753;
//+
Cylinder(3) = {17.018785, -2.027645, 0.000000, 0.000000, 0.000000, 0.100000, 1.248537, 2*Pi};
//+
MeshSize {11} = 0.124854;
//+
MeshSize {12} = 0.124854;
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
Save "../msh/cad_087.msh2";
//+
Save "../mesh/cad_087.mesh";
//+
Save "../geo_unrolled/cad_087.geo_unrolled";
