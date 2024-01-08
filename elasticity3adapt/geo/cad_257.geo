//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.450646, -3.863870, 0.000000, 32.606109, 8.960425, 0.100000};
//+
MeshSize {1} = 0.755408;
//+
MeshSize {2} = 0.755408;
//+
MeshSize {3} = 0.602989;
//+
MeshSize {4} = 0.602989;
//+
MeshSize {5} = 2.052683;
//+
MeshSize {6} = 2.052683;
//+
MeshSize {7} = 2.575385;
//+
MeshSize {8} = 2.575385;
//+
Cylinder(2) = {18.695314, -1.214196, 0.000000, 0.000000, 0.000000, 0.100000, 0.816333, 2*Pi};
//+
MeshSize {9} = 0.081633;
//+
MeshSize {10} = 0.081633;
//+
Cylinder(3) = {7.322921, 2.148855, 0.000000, 0.000000, 0.000000, 0.100000, 0.936124, 2*Pi};
//+
MeshSize {11} = 0.093612;
//+
MeshSize {12} = 0.093612;
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
Save "../msh/cad_257.msh2";
//+
Save "../mesh/cad_257.mesh";
//+
Save "../geo_unrolled/cad_257.geo_unrolled";
