//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.199470, -4.352324, 0.000000, 39.134240, 8.788459, 0.100000};
//+
MeshSize {1} = 0.564633;
//+
MeshSize {2} = 0.564633;
//+
MeshSize {3} = 0.778786;
//+
MeshSize {4} = 0.778786;
//+
MeshSize {5} = 1.654083;
//+
MeshSize {6} = 1.654083;
//+
MeshSize {7} = 3.202138;
//+
MeshSize {8} = 3.202138;
//+
Cylinder(2) = {29.629726, -2.714725, 0.000000, 0.000000, 0.000000, 0.100000, 0.856974, 2*Pi};
//+
MeshSize {9} = 0.085697;
//+
MeshSize {10} = 0.085697;
//+
Cylinder(3) = {4.896064, -1.159908, 0.000000, 0.000000, 0.000000, 0.100000, 1.389487, 2*Pi};
//+
MeshSize {11} = 0.138949;
//+
MeshSize {12} = 0.138949;
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
Save "../msh/cad_095.msh2";
//+
Save "../mesh/cad_095.mesh";
//+
Save "../geo_unrolled/cad_095.geo_unrolled";
