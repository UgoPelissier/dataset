//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.657921, -3.544102, 0.000000, 36.355219, 8.139846, 1.000000};
//+
MeshSize {1} = 0.772815;
//+
MeshSize {2} = 0.772815;
//+
MeshSize {3} = 0.760836;
//+
MeshSize {4} = 0.760836;
//+
MeshSize {5} = 1.797144;
//+
MeshSize {6} = 1.797144;
//+
MeshSize {7} = 1.955713;
//+
MeshSize {8} = 1.955713;
//+
Cylinder(2) = {13.559913, 0.862446, 0.000000, 0.000000, 0.000000, 0.100000, 0.570874, 2*Pi};
//+
MeshSize {9} = 0.057087;
//+
MeshSize {10} = 0.057087;
//+
Cylinder(3) = {15.395734, -1.065761, 0.000000, 0.000000, 0.000000, 0.100000, 1.208434, 2*Pi};
//+
MeshSize {11} = 0.120843;
//+
MeshSize {12} = 0.120843;
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
Save "../msh/cad_302.msh2";
//+
Save "../mesh/cad_302.mesh";
//+
Save "../geo_unrolled/cad_302.geo_unrolled";
