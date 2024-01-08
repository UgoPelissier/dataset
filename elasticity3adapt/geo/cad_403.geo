//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.992597, -3.953405, 0.000000, 31.893743, 9.514182, 0.100000};
//+
MeshSize {1} = 0.353839;
//+
MeshSize {2} = 0.353839;
//+
MeshSize {3} = 0.351146;
//+
MeshSize {4} = 0.351146;
//+
MeshSize {5} = 4.372420;
//+
MeshSize {6} = 4.372420;
//+
MeshSize {7} = 4.572675;
//+
MeshSize {8} = 4.572675;
//+
Cylinder(2) = {4.589870, 0.829447, 0.000000, 0.000000, 0.000000, 0.100000, 0.586078, 2*Pi};
//+
MeshSize {9} = 0.058608;
//+
MeshSize {10} = 0.058608;
//+
Cylinder(3) = {6.833248, -0.241535, 0.000000, 0.000000, 0.000000, 0.100000, 1.367526, 2*Pi};
//+
MeshSize {11} = 0.136753;
//+
MeshSize {12} = 0.136753;
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
Save "../msh/cad_403.msh2";
//+
Save "../mesh/cad_403.mesh";
//+
Save "../geo_unrolled/cad_403.geo_unrolled";
