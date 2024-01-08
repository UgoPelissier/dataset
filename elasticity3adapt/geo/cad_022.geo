//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.929881, -3.898859, 0.000000, 38.832179, 9.526929, 0.100000};
//+
MeshSize {1} = 2.611886;
//+
MeshSize {2} = 2.611886;
//+
MeshSize {3} = 3.362970;
//+
MeshSize {4} = 3.362970;
//+
MeshSize {5} = 0.677329;
//+
MeshSize {6} = 0.677329;
//+
MeshSize {7} = 0.447294;
//+
MeshSize {8} = 0.447294;
//+
Cylinder(2) = {34.356966, 2.960487, 0.000000, 0.000000, 0.000000, 0.100000, 0.766806, 2*Pi};
//+
MeshSize {9} = 0.076681;
//+
MeshSize {10} = 0.076681;
//+
Cylinder(3) = {18.302605, -1.855933, 0.000000, 0.000000, 0.000000, 0.100000, 1.295345, 2*Pi};
//+
MeshSize {11} = 0.129535;
//+
MeshSize {12} = 0.129535;
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
Save "../msh/cad_022.msh2";
//+
Save "../mesh/cad_022.mesh";
//+
Save "../geo_unrolled/cad_022.geo_unrolled";
