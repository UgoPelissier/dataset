//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.487642, -3.740649, 0.000000, 33.206710, 7.607021, 1.000000};
//+
MeshSize {1} = 0.658694;
//+
MeshSize {2} = 0.658694;
//+
MeshSize {3} = 0.641429;
//+
MeshSize {4} = 0.641429;
//+
MeshSize {5} = 2.424861;
//+
MeshSize {6} = 2.424861;
//+
MeshSize {7} = 2.495551;
//+
MeshSize {8} = 2.495551;
//+
Cylinder(2) = {15.825369, -0.345028, 0.000000, 0.000000, 0.000000, 0.100000, 0.546437, 2*Pi};
//+
MeshSize {9} = 0.054644;
//+
MeshSize {10} = 0.054644;
//+
Cylinder(3) = {8.872264, 0.337372, 0.000000, 0.000000, 0.000000, 0.100000, 0.673850, 2*Pi};
//+
MeshSize {11} = 0.067385;
//+
MeshSize {12} = 0.067385;
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
Save "../msh/cad_261.msh2";
//+
Save "../mesh/cad_261.mesh";
//+
Save "../geo_unrolled/cad_261.geo_unrolled";
