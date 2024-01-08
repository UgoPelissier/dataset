//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.359260, -4.110035, 0.000000, 34.768906, 8.743193, 0.100000};
//+
MeshSize {1} = 0.292298;
//+
MeshSize {2} = 0.292298;
//+
MeshSize {3} = 0.531838;
//+
MeshSize {4} = 0.531838;
//+
MeshSize {5} = 4.039109;
//+
MeshSize {6} = 4.039109;
//+
MeshSize {7} = 3.969126;
//+
MeshSize {8} = 3.969126;
//+
Cylinder(2) = {14.540607, 0.546666, 0.000000, 0.000000, 0.000000, 0.100000, 0.721274, 2*Pi};
//+
MeshSize {9} = 0.072127;
//+
MeshSize {10} = 0.072127;
//+
Cylinder(3) = {5.125997, -2.091598, 0.000000, 0.000000, 0.000000, 0.100000, 1.434758, 2*Pi};
//+
MeshSize {11} = 0.143476;
//+
MeshSize {12} = 0.143476;
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
Save "../msh/cad_135.msh2";
//+
Save "../mesh/cad_135.mesh";
//+
Save "../geo_unrolled/cad_135.geo_unrolled";
