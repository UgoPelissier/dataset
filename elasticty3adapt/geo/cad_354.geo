//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.176174, -2.930047, 0.000000, 30.519902, 7.771862, 1.000000};
//+
MeshSize {1} = 2.903472;
//+
MeshSize {2} = 2.903472;
//+
MeshSize {3} = 2.820007;
//+
MeshSize {4} = 2.820007;
//+
MeshSize {5} = 0.641514;
//+
MeshSize {6} = 0.641514;
//+
MeshSize {7} = 0.519065;
//+
MeshSize {8} = 0.519065;
//+
Cylinder(2) = {24.988654, 2.108843, 0.000000, 0.000000, 0.000000, 0.100000, 0.878911, 2*Pi};
//+
MeshSize {9} = 0.087891;
//+
MeshSize {10} = 0.087891;
//+
Cylinder(3) = {15.172922, 1.244778, 0.000000, 0.000000, 0.000000, 0.100000, 0.590533, 2*Pi};
//+
MeshSize {11} = 0.059053;
//+
MeshSize {12} = 0.059053;
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
Save "../msh/cad_354.msh2";
//+
Save "../mesh/cad_354.mesh";
//+
Save "../geo_unrolled/cad_354.geo_unrolled";
