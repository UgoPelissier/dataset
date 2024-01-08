//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.464988, -3.899323, 0.000000, 31.672026, 8.682965, 0.100000};
//+
MeshSize {1} = 0.808664;
//+
MeshSize {2} = 0.808664;
//+
MeshSize {3} = 0.935190;
//+
MeshSize {4} = 0.935190;
//+
MeshSize {5} = 3.473963;
//+
MeshSize {6} = 3.473963;
//+
MeshSize {7} = 0.741626;
//+
MeshSize {8} = 0.741626;
//+
Cylinder(2) = {28.961261, 2.570373, 0.000000, 0.000000, 0.000000, 0.100000, 0.669691, 2*Pi};
//+
MeshSize {9} = 0.066969;
//+
MeshSize {10} = 0.066969;
//+
Cylinder(3) = {2.725075, 0.134169, 0.000000, 0.000000, 0.000000, 0.100000, 1.132941, 2*Pi};
//+
MeshSize {11} = 0.113294;
//+
MeshSize {12} = 0.113294;
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
Save "../msh/cad_027.msh2";
//+
Save "../mesh/cad_027.mesh";
//+
Save "../geo_unrolled/cad_027.geo_unrolled";
