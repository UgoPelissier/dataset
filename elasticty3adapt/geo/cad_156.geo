//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.231856, -4.145551, 0.000000, 31.612662, 9.101197, 1.000000};
//+
MeshSize {1} = 0.595075;
//+
MeshSize {2} = 0.595075;
//+
MeshSize {3} = 0.550455;
//+
MeshSize {4} = 0.550455;
//+
MeshSize {5} = 2.581335;
//+
MeshSize {6} = 2.581335;
//+
MeshSize {7} = 3.259558;
//+
MeshSize {8} = 3.259558;
//+
Cylinder(2) = {6.283701, 0.839159, 0.000000, 0.000000, 0.000000, 0.100000, 0.888836, 2*Pi};
//+
MeshSize {9} = 0.088884;
//+
MeshSize {10} = 0.088884;
//+
Cylinder(3) = {14.570473, -2.162869, 0.000000, 0.000000, 0.000000, 0.100000, 1.362637, 2*Pi};
//+
MeshSize {11} = 0.136264;
//+
MeshSize {12} = 0.136264;
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
Save "../msh/cad_156.msh2";
//+
Save "../mesh/cad_156.mesh";
//+
Save "../geo_unrolled/cad_156.geo_unrolled";
