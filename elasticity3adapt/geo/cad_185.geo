//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.372492, -2.894916, 0.000000, 30.476532, 7.738943, 0.100000};
//+
MeshSize {1} = 0.686394;
//+
MeshSize {2} = 0.686394;
//+
MeshSize {3} = 0.443182;
//+
MeshSize {4} = 0.443182;
//+
MeshSize {5} = 2.674799;
//+
MeshSize {6} = 2.674799;
//+
MeshSize {7} = 3.256883;
//+
MeshSize {8} = 3.256883;
//+
Cylinder(2) = {4.118772, 2.476174, 0.000000, 0.000000, 0.000000, 0.100000, 0.574830, 2*Pi};
//+
MeshSize {9} = 0.057483;
//+
MeshSize {10} = 0.057483;
//+
Cylinder(3) = {17.516715, -0.503164, 0.000000, 0.000000, 0.000000, 0.100000, 1.464218, 2*Pi};
//+
MeshSize {11} = 0.146422;
//+
MeshSize {12} = 0.146422;
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
Save "../msh/cad_185.msh2";
//+
Save "../mesh/cad_185.mesh";
//+
Save "../geo_unrolled/cad_185.geo_unrolled";
