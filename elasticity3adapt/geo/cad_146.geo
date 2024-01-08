//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.353914, -4.062474, 0.000000, 35.626524, 8.311076, 0.100000};
//+
MeshSize {1} = 0.753741;
//+
MeshSize {2} = 0.753741;
//+
MeshSize {3} = 0.816306;
//+
MeshSize {4} = 0.816306;
//+
MeshSize {5} = 1.782117;
//+
MeshSize {6} = 1.782117;
//+
MeshSize {7} = 1.804952;
//+
MeshSize {8} = 1.804952;
//+
Cylinder(2) = {13.861029, -1.729972, 0.000000, 0.000000, 0.000000, 0.100000, 0.887800, 2*Pi};
//+
MeshSize {9} = 0.088780;
//+
MeshSize {10} = 0.088780;
//+
Cylinder(3) = {15.151447, -0.131055, 0.000000, 0.000000, 0.000000, 0.100000, 0.576921, 2*Pi};
//+
MeshSize {11} = 0.057692;
//+
MeshSize {12} = 0.057692;
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
Save "../msh/cad_146.msh2";
//+
Save "../mesh/cad_146.mesh";
//+
Save "../geo_unrolled/cad_146.geo_unrolled";
