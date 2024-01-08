//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.222144, -2.842521, 0.000000, 32.557128, 7.556372, 0.100000};
//+
MeshSize {1} = 0.353091;
//+
MeshSize {2} = 0.353091;
//+
MeshSize {3} = 0.502904;
//+
MeshSize {4} = 0.502904;
//+
MeshSize {5} = 3.628648;
//+
MeshSize {6} = 3.628648;
//+
MeshSize {7} = 4.152571;
//+
MeshSize {8} = 4.152571;
//+
Cylinder(2) = {17.648763, -0.412139, 0.000000, 0.000000, 0.000000, 0.100000, 1.171558, 2*Pi};
//+
MeshSize {9} = 0.117156;
//+
MeshSize {10} = 0.117156;
//+
Cylinder(3) = {2.864152, 0.089071, 0.000000, 0.000000, 0.000000, 0.100000, 0.694450, 2*Pi};
//+
MeshSize {11} = 0.069445;
//+
MeshSize {12} = 0.069445;
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
Save "../msh/cad_401.msh2";
//+
Save "../mesh/cad_401.mesh";
//+
Save "../geo_unrolled/cad_401.geo_unrolled";
