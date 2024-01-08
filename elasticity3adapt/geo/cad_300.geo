//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.000720, -3.343892, 0.000000, 33.789716, 7.963836, 0.100000};
//+
MeshSize {1} = 0.728830;
//+
MeshSize {2} = 0.728830;
//+
MeshSize {3} = 0.643077;
//+
MeshSize {4} = 0.643077;
//+
MeshSize {5} = 2.102964;
//+
MeshSize {6} = 2.102964;
//+
MeshSize {7} = 2.443531;
//+
MeshSize {8} = 2.443531;
//+
Cylinder(2) = {8.068702, 1.760036, 0.000000, 0.000000, 0.000000, 0.100000, 1.158289, 2*Pi};
//+
MeshSize {9} = 0.115829;
//+
MeshSize {10} = 0.115829;
//+
Cylinder(3) = {18.211576, -0.896004, 0.000000, 0.000000, 0.000000, 0.100000, 1.024070, 2*Pi};
//+
MeshSize {11} = 0.102407;
//+
MeshSize {12} = 0.102407;
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
Save "../msh/cad_300.msh2";
//+
Save "../mesh/cad_300.mesh";
//+
Save "../geo_unrolled/cad_300.geo_unrolled";
