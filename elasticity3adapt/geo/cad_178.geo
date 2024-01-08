//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.741694, -3.894218, 0.000000, 30.452737, 9.269752, 0.100000};
//+
MeshSize {1} = 0.838547;
//+
MeshSize {2} = 0.838547;
//+
MeshSize {3} = 0.585627;
//+
MeshSize {4} = 0.585627;
//+
MeshSize {5} = 2.392260;
//+
MeshSize {6} = 2.392260;
//+
MeshSize {7} = 1.899257;
//+
MeshSize {8} = 1.899257;
//+
Cylinder(2) = {16.314854, 2.623220, 0.000000, 0.000000, 0.000000, 0.100000, 1.220766, 2*Pi};
//+
MeshSize {9} = 0.122077;
//+
MeshSize {10} = 0.122077;
//+
Cylinder(3) = {8.383955, 3.581969, 0.000000, 0.000000, 0.000000, 0.100000, 1.271430, 2*Pi};
//+
MeshSize {11} = 0.127143;
//+
MeshSize {12} = 0.127143;
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
Save "../msh/cad_178.msh2";
//+
Save "../mesh/cad_178.mesh";
//+
Save "../geo_unrolled/cad_178.geo_unrolled";
