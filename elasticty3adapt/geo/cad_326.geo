//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.041826, -3.405790, 0.000000, 33.761915, 8.282244, 1.000000};
//+
MeshSize {1} = 1.399726;
//+
MeshSize {2} = 1.399726;
//+
MeshSize {3} = 1.536563;
//+
MeshSize {4} = 1.536563;
//+
MeshSize {5} = 0.889594;
//+
MeshSize {6} = 0.889594;
//+
MeshSize {7} = 0.837849;
//+
MeshSize {8} = 0.837849;
//+
Cylinder(2) = {20.671153, 2.008178, 0.000000, 0.000000, 0.000000, 0.100000, 1.093806, 2*Pi};
//+
MeshSize {9} = 0.109381;
//+
MeshSize {10} = 0.109381;
//+
Cylinder(3) = {17.599887, -0.400781, 0.000000, 0.000000, 0.000000, 0.100000, 1.327010, 2*Pi};
//+
MeshSize {11} = 0.132701;
//+
MeshSize {12} = 0.132701;
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
Save "../msh/cad_326.msh2";
//+
Save "../mesh/cad_326.mesh";
//+
Save "../geo_unrolled/cad_326.geo_unrolled";
