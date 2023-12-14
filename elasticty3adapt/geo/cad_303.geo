//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.823643, -3.572170, 0.000000, 29.582889, 7.675970, 1.000000};
//+
MeshSize {1} = 0.339011;
//+
MeshSize {2} = 0.339011;
//+
MeshSize {3} = 0.156333;
//+
MeshSize {4} = 0.156333;
//+
MeshSize {5} = 5.374146;
//+
MeshSize {6} = 5.374146;
//+
MeshSize {7} = 5.387444;
//+
MeshSize {8} = 5.387444;
//+
Cylinder(2) = {2.953060, 1.728413, 0.000000, 0.000000, 0.000000, 0.100000, 1.031661, 2*Pi};
//+
MeshSize {9} = 0.103166;
//+
MeshSize {10} = 0.103166;
//+
Cylinder(3) = {5.760834, 0.201049, 0.000000, 0.000000, 0.000000, 0.100000, 0.748763, 2*Pi};
//+
MeshSize {11} = 0.074876;
//+
MeshSize {12} = 0.074876;
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
Save "../msh/cad_303.msh2";
//+
Save "../mesh/cad_303.mesh";
//+
Save "../geo_unrolled/cad_303.geo_unrolled";
