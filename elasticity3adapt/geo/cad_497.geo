//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.937585, -3.377313, 0.000000, 33.603183, 8.320484, 1.000000};
//+
MeshSize {1} = 0.574802;
//+
MeshSize {2} = 0.574802;
//+
MeshSize {3} = 0.240535;
//+
MeshSize {4} = 0.240535;
//+
MeshSize {5} = 4.119225;
//+
MeshSize {6} = 4.119225;
//+
MeshSize {7} = 3.956641;
//+
MeshSize {8} = 3.956641;
//+
Cylinder(2) = {2.333038, 2.408085, 0.000000, 0.000000, 0.000000, 0.100000, 0.693615, 2*Pi};
//+
MeshSize {9} = 0.069361;
//+
MeshSize {10} = 0.069361;
//+
Cylinder(3) = {19.799187, 1.142933, 0.000000, 0.000000, 0.000000, 0.100000, 0.756286, 2*Pi};
//+
MeshSize {11} = 0.075629;
//+
MeshSize {12} = 0.075629;
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
Save "../msh/cad_497.msh2";
//+
Save "../mesh/cad_497.mesh";
//+
Save "../geo_unrolled/cad_497.geo_unrolled";
