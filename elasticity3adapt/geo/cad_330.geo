//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.791067, -3.711682, 0.000000, 38.706472, 8.446697, 0.100000};
//+
MeshSize {1} = 0.917801;
//+
MeshSize {2} = 0.917801;
//+
MeshSize {3} = 0.852978;
//+
MeshSize {4} = 0.852978;
//+
MeshSize {5} = 1.433950;
//+
MeshSize {6} = 1.433950;
//+
MeshSize {7} = 1.336677;
//+
MeshSize {8} = 1.336677;
//+
Cylinder(2) = {15.033040, 2.265914, 0.000000, 0.000000, 0.000000, 0.100000, 1.412253, 2*Pi};
//+
MeshSize {9} = 0.141225;
//+
MeshSize {10} = 0.141225;
//+
Cylinder(3) = {22.335526, 1.347504, 0.000000, 0.000000, 0.000000, 0.100000, 0.650090, 2*Pi};
//+
MeshSize {11} = 0.065009;
//+
MeshSize {12} = 0.065009;
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
Save "../msh/cad_330.msh2";
//+
Save "../mesh/cad_330.mesh";
//+
Save "../geo_unrolled/cad_330.geo_unrolled";
