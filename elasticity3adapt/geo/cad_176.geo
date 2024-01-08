//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.082428, -3.560270, 0.000000, 36.078043, 8.193669, 0.100000};
//+
MeshSize {1} = 1.731399;
//+
MeshSize {2} = 1.731399;
//+
MeshSize {3} = 1.880205;
//+
MeshSize {4} = 1.880205;
//+
MeshSize {5} = 0.769266;
//+
MeshSize {6} = 0.769266;
//+
MeshSize {7} = 0.795702;
//+
MeshSize {8} = 0.795702;
//+
Cylinder(2) = {11.206379, 0.092627, 0.000000, 0.000000, 0.000000, 0.100000, 0.703197, 2*Pi};
//+
MeshSize {9} = 0.070320;
//+
MeshSize {10} = 0.070320;
//+
Cylinder(3) = {29.219833, 0.298169, 0.000000, 0.000000, 0.000000, 0.100000, 0.890732, 2*Pi};
//+
MeshSize {11} = 0.089073;
//+
MeshSize {12} = 0.089073;
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
Save "../msh/cad_176.msh2";
//+
Save "../mesh/cad_176.mesh";
//+
Save "../geo_unrolled/cad_176.geo_unrolled";
