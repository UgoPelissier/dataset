//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.854351, -3.861679, 0.000000, 33.059497, 8.736728, 0.100000};
//+
MeshSize {1} = 0.558857;
//+
MeshSize {2} = 0.558857;
//+
MeshSize {3} = 0.504217;
//+
MeshSize {4} = 0.504217;
//+
MeshSize {5} = 3.010194;
//+
MeshSize {6} = 3.010194;
//+
MeshSize {7} = 3.328272;
//+
MeshSize {8} = 3.328272;
//+
Cylinder(2) = {12.119659, -1.299420, 0.000000, 0.000000, 0.000000, 0.100000, 1.161240, 2*Pi};
//+
MeshSize {9} = 0.116124;
//+
MeshSize {10} = 0.116124;
//+
Cylinder(3) = {8.397541, 1.293759, 0.000000, 0.000000, 0.000000, 0.100000, 1.092532, 2*Pi};
//+
MeshSize {11} = 0.109253;
//+
MeshSize {12} = 0.109253;
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
Save "../msh/cad_422.msh2";
//+
Save "../mesh/cad_422.mesh";
//+
Save "../geo_unrolled/cad_422.geo_unrolled";
