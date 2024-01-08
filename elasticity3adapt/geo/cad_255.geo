//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.220788, -3.141949, 0.000000, 31.722474, 7.953395, 1.000000};
//+
MeshSize {1} = 2.846068;
//+
MeshSize {2} = 2.846068;
//+
MeshSize {3} = 3.445537;
//+
MeshSize {4} = 3.445537;
//+
MeshSize {5} = 0.621526;
//+
MeshSize {6} = 0.621526;
//+
MeshSize {7} = 0.450948;
//+
MeshSize {8} = 0.450948;
//+
Cylinder(2) = {25.543751, 2.801592, 0.000000, 0.000000, 0.000000, 0.100000, 1.351388, 2*Pi};
//+
MeshSize {9} = 0.135139;
//+
MeshSize {10} = 0.135139;
//+
Cylinder(3) = {17.558081, -1.665022, 0.000000, 0.000000, 0.000000, 0.100000, 0.567363, 2*Pi};
//+
MeshSize {11} = 0.056736;
//+
MeshSize {12} = 0.056736;
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
Save "../msh/cad_255.msh2";
//+
Save "../mesh/cad_255.mesh";
//+
Save "../geo_unrolled/cad_255.geo_unrolled";
