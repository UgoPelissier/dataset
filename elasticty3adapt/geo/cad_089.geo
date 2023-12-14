//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.966268, -3.106107, 0.000000, 37.046324, 7.845996, 1.000000};
//+
MeshSize {1} = 0.557906;
//+
MeshSize {2} = 0.557906;
//+
MeshSize {3} = 0.541281;
//+
MeshSize {4} = 0.541281;
//+
MeshSize {5} = 3.263887;
//+
MeshSize {6} = 3.263887;
//+
MeshSize {7} = 2.847940;
//+
MeshSize {8} = 2.847940;
//+
Cylinder(2) = {9.503270, 1.107690, 0.000000, 0.000000, 0.000000, 0.100000, 1.374117, 2*Pi};
//+
MeshSize {9} = 0.137412;
//+
MeshSize {10} = 0.137412;
//+
Cylinder(3) = {16.629466, 3.502557, 0.000000, 0.000000, 0.000000, 0.100000, 0.722038, 2*Pi};
//+
MeshSize {11} = 0.072204;
//+
MeshSize {12} = 0.072204;
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
Save "../msh/cad_089.msh2";
//+
Save "../mesh/cad_089.mesh";
//+
Save "../geo_unrolled/cad_089.geo_unrolled";
