//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.513460, -4.311162, 0.000000, 32.088208, 9.976692, 1.000000};
//+
MeshSize {1} = 3.507486;
//+
MeshSize {2} = 3.507486;
//+
MeshSize {3} = 4.130566;
//+
MeshSize {4} = 4.130566;
//+
MeshSize {5} = 0.355082;
//+
MeshSize {6} = 0.355082;
//+
MeshSize {7} = 0.521054;
//+
MeshSize {8} = 0.521054;
//+
Cylinder(2) = {24.388605, -2.495643, 0.000000, 0.000000, 0.000000, 0.100000, 0.962043, 2*Pi};
//+
MeshSize {9} = 0.096204;
//+
MeshSize {10} = 0.096204;
//+
Cylinder(3) = {26.853127, -1.274625, 0.000000, 0.000000, 0.000000, 0.100000, 1.130298, 2*Pi};
//+
MeshSize {11} = 0.113030;
//+
MeshSize {12} = 0.113030;
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
Save "../msh/cad_188.msh2";
//+
Save "../mesh/cad_188.mesh";
//+
Save "../geo_unrolled/cad_188.geo_unrolled";
