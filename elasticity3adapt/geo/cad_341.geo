//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.685493, -3.392459, 0.000000, 38.194801, 8.383989, 0.100000};
//+
MeshSize {1} = 4.558447;
//+
MeshSize {2} = 4.558447;
//+
MeshSize {3} = 5.010267;
//+
MeshSize {4} = 5.010267;
//+
MeshSize {5} = 0.114453;
//+
MeshSize {6} = 0.114453;
//+
MeshSize {7} = 0.516321;
//+
MeshSize {8} = 0.516321;
//+
Cylinder(2) = {37.698851, -1.840621, 0.000000, 0.000000, 0.000000, 0.100000, 0.531173, 2*Pi};
//+
MeshSize {9} = 0.053117;
//+
MeshSize {10} = 0.053117;
//+
Cylinder(3) = {22.199934, -0.925875, 0.000000, 0.000000, 0.000000, 0.100000, 1.095192, 2*Pi};
//+
MeshSize {11} = 0.109519;
//+
MeshSize {12} = 0.109519;
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
Save "../msh/cad_341.msh2";
//+
Save "../mesh/cad_341.mesh";
//+
Save "../geo_unrolled/cad_341.geo_unrolled";
