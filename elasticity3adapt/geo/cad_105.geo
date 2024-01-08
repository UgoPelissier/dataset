//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.168636, -3.631809, 0.000000, 31.373307, 9.146832, 0.100000};
//+
MeshSize {1} = 2.668704;
//+
MeshSize {2} = 2.668704;
//+
MeshSize {3} = 2.247857;
//+
MeshSize {4} = 2.247857;
//+
MeshSize {5} = 0.652187;
//+
MeshSize {6} = 0.652187;
//+
MeshSize {7} = 0.650783;
//+
MeshSize {8} = 0.650783;
//+
Cylinder(2) = {22.730157, 0.961688, 0.000000, 0.000000, 0.000000, 0.100000, 1.342530, 2*Pi};
//+
MeshSize {9} = 0.134253;
//+
MeshSize {10} = 0.134253;
//+
Cylinder(3) = {17.777608, 2.974882, 0.000000, 0.000000, 0.000000, 0.100000, 0.528373, 2*Pi};
//+
MeshSize {11} = 0.052837;
//+
MeshSize {12} = 0.052837;
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
Save "../msh/cad_105.msh2";
//+
Save "../mesh/cad_105.mesh";
//+
Save "../geo_unrolled/cad_105.geo_unrolled";
