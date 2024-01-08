//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.149561, -4.422137, 0.000000, 34.609131, 9.036870, 0.100000};
//+
MeshSize {1} = 0.769215;
//+
MeshSize {2} = 0.769215;
//+
MeshSize {3} = 0.826811;
//+
MeshSize {4} = 0.826811;
//+
MeshSize {5} = 2.169150;
//+
MeshSize {6} = 2.169150;
//+
MeshSize {7} = 1.365745;
//+
MeshSize {8} = 1.365745;
//+
Cylinder(2) = {4.084717, -0.160486, 0.000000, 0.000000, 0.000000, 0.100000, 0.630329, 2*Pi};
//+
MeshSize {9} = 0.063033;
//+
MeshSize {10} = 0.063033;
//+
Cylinder(3) = {26.933482, 1.348588, 0.000000, 0.000000, 0.000000, 0.100000, 1.022044, 2*Pi};
//+
MeshSize {11} = 0.102204;
//+
MeshSize {12} = 0.102204;
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
Save "../msh/cad_267.msh2";
//+
Save "../mesh/cad_267.mesh";
//+
Save "../geo_unrolled/cad_267.geo_unrolled";
