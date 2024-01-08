//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.538618, -3.582343, 0.000000, 38.324740, 7.691156, 0.100000};
//+
MeshSize {1} = 3.767455;
//+
MeshSize {2} = 3.767455;
//+
MeshSize {3} = 3.687962;
//+
MeshSize {4} = 3.687962;
//+
MeshSize {5} = 0.449920;
//+
MeshSize {6} = 0.449920;
//+
MeshSize {7} = 0.449056;
//+
MeshSize {8} = 0.449056;
//+
Cylinder(2) = {30.126768, -1.032010, 0.000000, 0.000000, 0.000000, 0.100000, 0.723307, 2*Pi};
//+
MeshSize {9} = 0.072331;
//+
MeshSize {10} = 0.072331;
//+
Cylinder(3) = {30.008142, 1.793784, 0.000000, 0.000000, 0.000000, 0.100000, 0.790999, 2*Pi};
//+
MeshSize {11} = 0.079100;
//+
MeshSize {12} = 0.079100;
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
Save "../msh/cad_259.msh2";
//+
Save "../mesh/cad_259.mesh";
//+
Save "../geo_unrolled/cad_259.geo_unrolled";
