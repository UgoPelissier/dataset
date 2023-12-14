//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.548563, -4.279216, 0.000000, 34.164890, 9.032710, 1.000000};
//+
MeshSize {1} = 1.300049;
//+
MeshSize {2} = 1.300049;
//+
MeshSize {3} = 1.356250;
//+
MeshSize {4} = 1.356250;
//+
MeshSize {5} = 0.851442;
//+
MeshSize {6} = 0.851442;
//+
MeshSize {7} = 0.950239;
//+
MeshSize {8} = 0.950239;
//+
Cylinder(2) = {12.702491, -0.011110, 0.000000, 0.000000, 0.000000, 0.100000, 0.710532, 2*Pi};
//+
MeshSize {9} = 0.071053;
//+
MeshSize {10} = 0.071053;
//+
Cylinder(3) = {24.324155, -1.153390, 0.000000, 0.000000, 0.000000, 0.100000, 1.354326, 2*Pi};
//+
MeshSize {11} = 0.135433;
//+
MeshSize {12} = 0.135433;
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
Save "../msh/cad_281.msh2";
//+
Save "../mesh/cad_281.mesh";
//+
Save "../geo_unrolled/cad_281.geo_unrolled";
