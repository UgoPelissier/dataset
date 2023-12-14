//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.566116, -3.578585, 0.000000, 34.656579, 8.410687, 1.000000};
//+
MeshSize {1} = 0.639272;
//+
MeshSize {2} = 0.639272;
//+
MeshSize {3} = 0.699076;
//+
MeshSize {4} = 0.699076;
//+
MeshSize {5} = 2.506410;
//+
MeshSize {6} = 2.506410;
//+
MeshSize {7} = 2.213696;
//+
MeshSize {8} = 2.213696;
//+
Cylinder(2) = {10.576519, -0.543425, 0.000000, 0.000000, 0.000000, 0.100000, 0.818653, 2*Pi};
//+
MeshSize {9} = 0.081865;
//+
MeshSize {10} = 0.081865;
//+
Cylinder(3) = {14.527192, 2.722629, 0.000000, 0.000000, 0.000000, 0.100000, 1.146043, 2*Pi};
//+
MeshSize {11} = 0.114604;
//+
MeshSize {12} = 0.114604;
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
Save "../msh/cad_428.msh2";
//+
Save "../mesh/cad_428.mesh";
//+
Save "../geo_unrolled/cad_428.geo_unrolled";
