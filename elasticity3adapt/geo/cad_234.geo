//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.222918, -4.070237, 0.000000, 35.378590, 9.049395, 0.100000};
//+
MeshSize {1} = 0.576205;
//+
MeshSize {2} = 0.576205;
//+
MeshSize {3} = 0.335341;
//+
MeshSize {4} = 0.335341;
//+
MeshSize {5} = 3.822496;
//+
MeshSize {6} = 3.822496;
//+
MeshSize {7} = 3.545810;
//+
MeshSize {8} = 3.545810;
//+
Cylinder(2) = {16.844273, 1.422268, 0.000000, 0.000000, 0.000000, 0.100000, 1.215914, 2*Pi};
//+
MeshSize {9} = 0.121591;
//+
MeshSize {10} = 0.121591;
//+
Cylinder(3) = {4.059404, 2.346689, 0.000000, 0.000000, 0.000000, 0.100000, 0.721747, 2*Pi};
//+
MeshSize {11} = 0.072175;
//+
MeshSize {12} = 0.072175;
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
Save "../msh/cad_234.msh2";
//+
Save "../mesh/cad_234.mesh";
//+
Save "../geo_unrolled/cad_234.geo_unrolled";
