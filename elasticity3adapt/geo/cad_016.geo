//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.594519, -3.860209, 0.000000, 33.597730, 8.959181, 0.100000};
//+
MeshSize {1} = 2.318664;
//+
MeshSize {2} = 2.318664;
//+
MeshSize {3} = 1.754536;
//+
MeshSize {4} = 1.754536;
//+
MeshSize {5} = 0.647858;
//+
MeshSize {6} = 0.647858;
//+
MeshSize {7} = 0.822464;
//+
MeshSize {8} = 0.822464;
//+
Cylinder(2) = {17.875117, 3.894612, 0.000000, 0.000000, 0.000000, 0.100000, 0.704259, 2*Pi};
//+
MeshSize {9} = 0.070426;
//+
MeshSize {10} = 0.070426;
//+
Cylinder(3) = {24.488208, -2.341160, 0.000000, 0.000000, 0.000000, 0.100000, 0.895786, 2*Pi};
//+
MeshSize {11} = 0.089579;
//+
MeshSize {12} = 0.089579;
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
Save "../msh/cad_016.msh2";
//+
Save "../mesh/cad_016.mesh";
//+
Save "../geo_unrolled/cad_016.geo_unrolled";
