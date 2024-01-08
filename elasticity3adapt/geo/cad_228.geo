//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.400778, -3.269834, 0.000000, 32.317553, 8.464289, 0.100000};
//+
MeshSize {1} = 2.662618;
//+
MeshSize {2} = 2.662618;
//+
MeshSize {3} = 0.306078;
//+
MeshSize {4} = 0.306078;
//+
MeshSize {5} = 2.569470;
//+
MeshSize {6} = 2.569470;
//+
MeshSize {7} = 0.938236;
//+
MeshSize {8} = 0.938236;
//+
Cylinder(2) = {27.832554, 2.538433, 0.000000, 0.000000, 0.000000, 0.100000, 1.148846, 2*Pi};
//+
MeshSize {9} = 0.114885;
//+
MeshSize {10} = 0.114885;
//+
Cylinder(3) = {1.918812, 3.745168, 0.000000, 0.000000, 0.000000, 0.100000, 0.659395, 2*Pi};
//+
MeshSize {11} = 0.065940;
//+
MeshSize {12} = 0.065940;
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
Save "../msh/cad_228.msh2";
//+
Save "../mesh/cad_228.mesh";
//+
Save "../geo_unrolled/cad_228.geo_unrolled";
