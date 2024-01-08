//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.435836, -4.569903, 0.000000, 32.925459, 9.197855, 0.100000};
//+
MeshSize {1} = 0.503490;
//+
MeshSize {2} = 0.503490;
//+
MeshSize {3} = 0.370415;
//+
MeshSize {4} = 0.370415;
//+
MeshSize {5} = 3.428562;
//+
MeshSize {6} = 3.428562;
//+
MeshSize {7} = 4.237387;
//+
MeshSize {8} = 4.237387;
//+
Cylinder(2) = {13.488528, -3.080870, 0.000000, 0.000000, 0.000000, 0.100000, 0.967390, 2*Pi};
//+
MeshSize {9} = 0.096739;
//+
MeshSize {10} = 0.096739;
//+
Cylinder(3) = {4.257829, 1.124502, 0.000000, 0.000000, 0.000000, 0.100000, 0.526966, 2*Pi};
//+
MeshSize {11} = 0.052697;
//+
MeshSize {12} = 0.052697;
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
Save "../msh/cad_033.msh2";
//+
Save "../mesh/cad_033.mesh";
//+
Save "../geo_unrolled/cad_033.geo_unrolled";
