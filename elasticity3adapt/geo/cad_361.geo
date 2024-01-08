//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.472452, -3.105916, 0.000000, 39.131659, 7.695205, 1.000000};
//+
MeshSize {1} = 1.310803;
//+
MeshSize {2} = 1.310803;
//+
MeshSize {3} = 1.372232;
//+
MeshSize {4} = 1.372232;
//+
MeshSize {5} = 0.922066;
//+
MeshSize {6} = 0.922066;
//+
MeshSize {7} = 0.872283;
//+
MeshSize {8} = 0.872283;
//+
Cylinder(2) = {25.096636, 2.293927, 0.000000, 0.000000, 0.000000, 0.100000, 0.812500, 2*Pi};
//+
MeshSize {9} = 0.081250;
//+
MeshSize {10} = 0.081250;
//+
Cylinder(3) = {18.569132, 0.097445, 0.000000, 0.000000, 0.000000, 0.100000, 0.969232, 2*Pi};
//+
MeshSize {11} = 0.096923;
//+
MeshSize {12} = 0.096923;
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
Save "../msh/cad_361.msh2";
//+
Save "../mesh/cad_361.mesh";
//+
Save "../geo_unrolled/cad_361.geo_unrolled";
