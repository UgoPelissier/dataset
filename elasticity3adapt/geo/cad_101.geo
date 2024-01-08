//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.319588, -4.080289, 0.000000, 30.329803, 8.855428, 0.100000};
//+
MeshSize {1} = 3.749812;
//+
MeshSize {2} = 3.749812;
//+
MeshSize {3} = 0.859593;
//+
MeshSize {4} = 0.859593;
//+
MeshSize {5} = 0.960879;
//+
MeshSize {6} = 0.960879;
//+
MeshSize {7} = 0.625938;
//+
MeshSize {8} = 0.625938;
//+
Cylinder(2) = {28.421930, 1.219393, 0.000000, 0.000000, 0.000000, 0.100000, 1.293696, 2*Pi};
//+
MeshSize {9} = 0.129370;
//+
MeshSize {10} = 0.129370;
//+
Cylinder(3) = {4.256492, 2.571378, 0.000000, 0.000000, 0.000000, 0.100000, 0.526284, 2*Pi};
//+
MeshSize {11} = 0.052628;
//+
MeshSize {12} = 0.052628;
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
Save "../msh/cad_101.msh2";
//+
Save "../mesh/cad_101.mesh";
//+
Save "../geo_unrolled/cad_101.geo_unrolled";
