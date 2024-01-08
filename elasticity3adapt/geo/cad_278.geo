//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.269076, -3.940291, 0.000000, 36.561997, 9.774819, 0.100000};
//+
MeshSize {1} = 0.469150;
//+
MeshSize {2} = 0.469150;
//+
MeshSize {3} = 0.175763;
//+
MeshSize {4} = 0.175763;
//+
MeshSize {5} = 4.739981;
//+
MeshSize {6} = 4.739981;
//+
MeshSize {7} = 4.701800;
//+
MeshSize {8} = 4.701800;
//+
Cylinder(2) = {9.196551, 1.159263, 0.000000, 0.000000, 0.000000, 0.100000, 0.655996, 2*Pi};
//+
MeshSize {9} = 0.065600;
//+
MeshSize {10} = 0.065600;
//+
Cylinder(3) = {3.929481, 4.107263, 0.000000, 0.000000, 0.000000, 0.100000, 1.175812, 2*Pi};
//+
MeshSize {11} = 0.117581;
//+
MeshSize {12} = 0.117581;
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
Save "../msh/cad_278.msh2";
//+
Save "../mesh/cad_278.mesh";
//+
Save "../geo_unrolled/cad_278.geo_unrolled";
