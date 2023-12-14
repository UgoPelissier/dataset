//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.579574, -3.386528, 0.000000, 30.321760, 8.237776, 1.000000};
//+
MeshSize {1} = 5.033397;
//+
MeshSize {2} = 5.033397;
//+
MeshSize {3} = 5.218042;
//+
MeshSize {4} = 5.218042;
//+
MeshSize {5} = 0.360230;
//+
MeshSize {6} = 0.360230;
//+
MeshSize {7} = 0.191515;
//+
MeshSize {8} = 0.191515;
//+
Cylinder(2) = {28.227966, 2.722359, 0.000000, 0.000000, 0.000000, 0.100000, 0.756970, 2*Pi};
//+
MeshSize {9} = 0.075697;
//+
MeshSize {10} = 0.075697;
//+
Cylinder(3) = {25.484015, -0.149534, 0.000000, 0.000000, 0.000000, 0.100000, 1.306488, 2*Pi};
//+
MeshSize {11} = 0.130649;
//+
MeshSize {12} = 0.130649;
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
Save "../msh/cad_060.msh2";
//+
Save "../mesh/cad_060.mesh";
//+
Save "../geo_unrolled/cad_060.geo_unrolled";
