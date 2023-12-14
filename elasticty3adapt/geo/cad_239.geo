//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.672374, -3.966573, 0.000000, 35.828490, 9.895816, 1.000000};
//+
MeshSize {1} = 0.288592;
//+
MeshSize {2} = 0.288592;
//+
MeshSize {3} = 0.620460;
//+
MeshSize {4} = 0.620460;
//+
MeshSize {5} = 3.846205;
//+
MeshSize {6} = 3.846205;
//+
MeshSize {7} = 3.540704;
//+
MeshSize {8} = 3.540704;
//+
Cylinder(2) = {18.392546, 1.922876, 0.000000, 0.000000, 0.000000, 0.100000, 0.822381, 2*Pi};
//+
MeshSize {9} = 0.082238;
//+
MeshSize {10} = 0.082238;
//+
Cylinder(3) = {4.212391, -1.462228, 0.000000, 0.000000, 0.000000, 0.100000, 0.980370, 2*Pi};
//+
MeshSize {11} = 0.098037;
//+
MeshSize {12} = 0.098037;
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
Save "../msh/cad_239.msh2";
//+
Save "../mesh/cad_239.mesh";
//+
Save "../geo_unrolled/cad_239.geo_unrolled";
