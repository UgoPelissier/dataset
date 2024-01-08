//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.111549, -3.764306, 0.000000, 35.806152, 7.877839, 0.100000};
//+
MeshSize {1} = 1.994738;
//+
MeshSize {2} = 1.994738;
//+
MeshSize {3} = 1.627486;
//+
MeshSize {4} = 1.627486;
//+
MeshSize {5} = 0.774678;
//+
MeshSize {6} = 0.774678;
//+
MeshSize {7} = 0.790240;
//+
MeshSize {8} = 0.790240;
//+
Cylinder(2) = {16.042755, 2.425119, 0.000000, 0.000000, 0.000000, 0.100000, 0.761253, 2*Pi};
//+
MeshSize {9} = 0.076125;
//+
MeshSize {10} = 0.076125;
//+
Cylinder(3) = {25.170223, -0.118810, 0.000000, 0.000000, 0.000000, 0.100000, 1.299372, 2*Pi};
//+
MeshSize {11} = 0.129937;
//+
MeshSize {12} = 0.129937;
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
Save "../msh/cad_364.msh2";
//+
Save "../mesh/cad_364.mesh";
//+
Save "../geo_unrolled/cad_364.geo_unrolled";
