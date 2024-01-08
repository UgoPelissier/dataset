//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.271258, -4.299664, 0.000000, 33.456824, 8.755102, 1.000000};
//+
MeshSize {1} = 0.792300;
//+
MeshSize {2} = 0.792300;
//+
MeshSize {3} = 0.771815;
//+
MeshSize {4} = 0.771815;
//+
MeshSize {5} = 1.664951;
//+
MeshSize {6} = 1.664951;
//+
MeshSize {7} = 1.956224;
//+
MeshSize {8} = 1.956224;
//+
Cylinder(2) = {15.686734, -1.905926, 0.000000, 0.000000, 0.000000, 0.100000, 1.344847, 2*Pi};
//+
MeshSize {9} = 0.134485;
//+
MeshSize {10} = 0.134485;
//+
Cylinder(3) = {11.039232, 0.464821, 0.000000, 0.000000, 0.000000, 0.100000, 0.507969, 2*Pi};
//+
MeshSize {11} = 0.050797;
//+
MeshSize {12} = 0.050797;
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
Save "../msh/cad_182.msh2";
//+
Save "../mesh/cad_182.mesh";
//+
Save "../geo_unrolled/cad_182.geo_unrolled";
