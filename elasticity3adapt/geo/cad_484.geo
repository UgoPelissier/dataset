//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.027171, -4.091550, 0.000000, 33.872226, 8.300104, 1.000000};
//+
MeshSize {1} = 1.743188;
//+
MeshSize {2} = 1.743188;
//+
MeshSize {3} = 2.102664;
//+
MeshSize {4} = 2.102664;
//+
MeshSize {5} = 0.783831;
//+
MeshSize {6} = 0.783831;
//+
MeshSize {7} = 0.731544;
//+
MeshSize {8} = 0.731544;
//+
Cylinder(2) = {13.994444, -1.459011, 0.000000, 0.000000, 0.000000, 0.100000, 0.875513, 2*Pi};
//+
MeshSize {9} = 0.087551;
//+
MeshSize {10} = 0.087551;
//+
Cylinder(3) = {25.496880, 0.714050, 0.000000, 0.000000, 0.000000, 0.100000, 0.992979, 2*Pi};
//+
MeshSize {11} = 0.099298;
//+
MeshSize {12} = 0.099298;
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
Save "../msh/cad_484.msh2";
//+
Save "../mesh/cad_484.mesh";
//+
Save "../geo_unrolled/cad_484.geo_unrolled";
