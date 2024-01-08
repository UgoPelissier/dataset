//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.366970, -3.652870, 0.000000, 35.314526, 9.262206, 0.100000};
//+
MeshSize {1} = 0.227445;
//+
MeshSize {2} = 0.227445;
//+
MeshSize {3} = 0.150093;
//+
MeshSize {4} = 0.150093;
//+
MeshSize {5} = 5.846141;
//+
MeshSize {6} = 5.846141;
//+
MeshSize {7} = 6.038595;
//+
MeshSize {8} = 6.038595;
//+
Cylinder(2) = {4.037874, -0.171046, 0.000000, 0.000000, 0.000000, 0.100000, 1.190497, 2*Pi};
//+
MeshSize {9} = 0.119050;
//+
MeshSize {10} = 0.119050;
//+
Cylinder(3) = {2.791528, 3.611478, 0.000000, 0.000000, 0.000000, 0.100000, 0.588446, 2*Pi};
//+
MeshSize {11} = 0.058845;
//+
MeshSize {12} = 0.058845;
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
Save "../msh/cad_360.msh2";
//+
Save "../mesh/cad_360.mesh";
//+
Save "../geo_unrolled/cad_360.geo_unrolled";
