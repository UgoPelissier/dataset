//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.172559, -4.051534, 0.000000, 34.205024, 8.598554, 0.100000};
//+
MeshSize {1} = 0.799221;
//+
MeshSize {2} = 0.799221;
//+
MeshSize {3} = 0.872072;
//+
MeshSize {4} = 0.872072;
//+
MeshSize {5} = 1.820970;
//+
MeshSize {6} = 1.820970;
//+
MeshSize {7} = 1.358636;
//+
MeshSize {8} = 1.358636;
//+
Cylinder(2) = {9.725197, -0.784451, 0.000000, 0.000000, 0.000000, 0.100000, 0.838367, 2*Pi};
//+
MeshSize {9} = 0.083837;
//+
MeshSize {10} = 0.083837;
//+
Cylinder(3) = {20.553871, 2.486934, 0.000000, 0.000000, 0.000000, 0.100000, 1.147305, 2*Pi};
//+
MeshSize {11} = 0.114731;
//+
MeshSize {12} = 0.114731;
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
Save "../msh/cad_082.msh2";
//+
Save "../mesh/cad_082.mesh";
//+
Save "../geo_unrolled/cad_082.geo_unrolled";
