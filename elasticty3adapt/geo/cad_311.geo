//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.041182, -3.838072, 0.000000, 31.454618, 8.756004, 1.000000};
//+
MeshSize {1} = 0.844183;
//+
MeshSize {2} = 0.844183;
//+
MeshSize {3} = 0.893155;
//+
MeshSize {4} = 0.893155;
//+
MeshSize {5} = 1.239479;
//+
MeshSize {6} = 1.239479;
//+
MeshSize {7} = 1.678689;
//+
MeshSize {8} = 1.678689;
//+
Cylinder(2) = {12.374155, -0.476184, 0.000000, 0.000000, 0.000000, 0.100000, 1.095132, 2*Pi};
//+
MeshSize {9} = 0.109513;
//+
MeshSize {10} = 0.109513;
//+
Cylinder(3) = {15.896855, -2.433419, 0.000000, 0.000000, 0.000000, 0.100000, 0.789783, 2*Pi};
//+
MeshSize {11} = 0.078978;
//+
MeshSize {12} = 0.078978;
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
Save "../msh/cad_311.msh2";
//+
Save "../mesh/cad_311.mesh";
//+
Save "../geo_unrolled/cad_311.geo_unrolled";
