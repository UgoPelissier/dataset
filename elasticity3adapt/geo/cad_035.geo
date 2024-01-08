//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.761230, -4.410779, 0.000000, 36.758869, 9.579811, 0.100000};
//+
MeshSize {1} = 0.636623;
//+
MeshSize {2} = 0.636623;
//+
MeshSize {3} = 0.328839;
//+
MeshSize {4} = 0.328839;
//+
MeshSize {5} = 4.164366;
//+
MeshSize {6} = 4.164366;
//+
MeshSize {7} = 2.897817;
//+
MeshSize {8} = 2.897817;
//+
Cylinder(2) = {24.393470, 2.694159, 0.000000, 0.000000, 0.000000, 0.100000, 1.151755, 2*Pi};
//+
MeshSize {9} = 0.115175;
//+
MeshSize {10} = 0.115175;
//+
Cylinder(3) = {2.851395, 1.826050, 0.000000, 0.000000, 0.000000, 0.100000, 1.127242, 2*Pi};
//+
MeshSize {11} = 0.112724;
//+
MeshSize {12} = 0.112724;
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
Save "../msh/cad_035.msh2";
//+
Save "../mesh/cad_035.mesh";
//+
Save "../geo_unrolled/cad_035.geo_unrolled";
