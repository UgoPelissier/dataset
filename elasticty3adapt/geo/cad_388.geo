//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.148970, -4.401529, 0.000000, 29.901806, 9.950460, 1.000000};
//+
MeshSize {1} = 1.205624;
//+
MeshSize {2} = 1.205624;
//+
MeshSize {3} = 1.201405;
//+
MeshSize {4} = 1.201405;
//+
MeshSize {5} = 1.506714;
//+
MeshSize {6} = 1.506714;
//+
MeshSize {7} = 0.726191;
//+
MeshSize {8} = 0.726191;
//+
Cylinder(2) = {23.981045, 3.196996, 0.000000, 0.000000, 0.000000, 0.100000, 0.952441, 2*Pi};
//+
MeshSize {9} = 0.095244;
//+
MeshSize {10} = 0.095244;
//+
Cylinder(3) = {7.227557, 0.581972, 0.000000, 0.000000, 0.000000, 0.100000, 0.512423, 2*Pi};
//+
MeshSize {11} = 0.051242;
//+
MeshSize {12} = 0.051242;
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
Save "../msh/cad_388.msh2";
//+
Save "../mesh/cad_388.mesh";
//+
Save "../geo_unrolled/cad_388.geo_unrolled";
