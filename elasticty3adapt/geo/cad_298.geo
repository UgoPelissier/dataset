//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.788562, -3.541701, 0.000000, 37.266692, 8.596797, 1.000000};
//+
MeshSize {1} = 0.405819;
//+
MeshSize {2} = 0.405819;
//+
MeshSize {3} = 0.204977;
//+
MeshSize {4} = 0.204977;
//+
MeshSize {5} = 4.924934;
//+
MeshSize {6} = 4.924934;
//+
MeshSize {7} = 4.808222;
//+
MeshSize {8} = 4.808222;
//+
Cylinder(2) = {7.343343, 1.626944, 0.000000, 0.000000, 0.000000, 0.100000, 0.858167, 2*Pi};
//+
MeshSize {9} = 0.085817;
//+
MeshSize {10} = 0.085817;
//+
Cylinder(3) = {5.127267, 3.427225, 0.000000, 0.000000, 0.000000, 0.100000, 0.985302, 2*Pi};
//+
MeshSize {11} = 0.098530;
//+
MeshSize {12} = 0.098530;
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
Save "../msh/cad_298.msh2";
//+
Save "../mesh/cad_298.mesh";
//+
Save "../geo_unrolled/cad_298.geo_unrolled";
