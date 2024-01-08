//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.839332, -3.248997, 0.000000, 35.824228, 7.883712, 0.100000};
//+
MeshSize {1} = 0.235028;
//+
MeshSize {2} = 0.235028;
//+
MeshSize {3} = 0.481651;
//+
MeshSize {4} = 0.481651;
//+
MeshSize {5} = 4.271051;
//+
MeshSize {6} = 4.271051;
//+
MeshSize {7} = 4.581287;
//+
MeshSize {8} = 4.581287;
//+
Cylinder(2) = {4.636969, -1.888881, 0.000000, 0.000000, 0.000000, 0.100000, 0.684497, 2*Pi};
//+
MeshSize {9} = 0.068450;
//+
MeshSize {10} = 0.068450;
//+
Cylinder(3) = {12.606656, -1.001902, 0.000000, 0.000000, 0.000000, 0.100000, 1.039867, 2*Pi};
//+
MeshSize {11} = 0.103987;
//+
MeshSize {12} = 0.103987;
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
Save "../msh/cad_398.msh2";
//+
Save "../mesh/cad_398.mesh";
//+
Save "../geo_unrolled/cad_398.geo_unrolled";
