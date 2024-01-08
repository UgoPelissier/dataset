//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.947449, -3.533819, 0.000000, 33.169469, 8.356981, 1.000000};
//+
MeshSize {1} = 2.207253;
//+
MeshSize {2} = 2.207253;
//+
MeshSize {3} = 2.485296;
//+
MeshSize {4} = 2.485296;
//+
MeshSize {5} = 0.722837;
//+
MeshSize {6} = 0.722837;
//+
MeshSize {7} = 0.620602;
//+
MeshSize {8} = 0.620602;
//+
Cylinder(2) = {22.041276, -1.451554, 0.000000, 0.000000, 0.000000, 0.100000, 1.093357, 2*Pi};
//+
MeshSize {9} = 0.109336;
//+
MeshSize {10} = 0.109336;
//+
Cylinder(3) = {23.774837, 2.857318, 0.000000, 0.000000, 0.000000, 0.100000, 0.945256, 2*Pi};
//+
MeshSize {11} = 0.094526;
//+
MeshSize {12} = 0.094526;
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
Save "../msh/cad_396.msh2";
//+
Save "../mesh/cad_396.mesh";
//+
Save "../geo_unrolled/cad_396.geo_unrolled";
