//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179816, -4.550828, 0.000000, 32.010386, 9.739412, 0.100000};
//+
MeshSize {1} = 0.858136;
//+
MeshSize {2} = 0.858136;
//+
MeshSize {3} = 0.625841;
//+
MeshSize {4} = 0.625841;
//+
MeshSize {5} = 2.288239;
//+
MeshSize {6} = 2.288239;
//+
MeshSize {7} = 1.720540;
//+
MeshSize {8} = 1.720540;
//+
Cylinder(2) = {17.042532, 2.598886, 0.000000, 0.000000, 0.000000, 0.100000, 1.499606, 2*Pi};
//+
MeshSize {9} = 0.149961;
//+
MeshSize {10} = 0.149961;
//+
Cylinder(3) = {8.579558, 3.080431, 0.000000, 0.000000, 0.000000, 0.100000, 1.417259, 2*Pi};
//+
MeshSize {11} = 0.141726;
//+
MeshSize {12} = 0.141726;
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
Save "../msh/cad_192.msh2";
//+
Save "../mesh/cad_192.mesh";
//+
Save "../geo_unrolled/cad_192.geo_unrolled";
