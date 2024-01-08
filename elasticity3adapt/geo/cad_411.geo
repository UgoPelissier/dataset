//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.597649, -3.873779, 0.000000, 32.822803, 9.274737, 0.100000};
//+
MeshSize {1} = 3.238802;
//+
MeshSize {2} = 3.238802;
//+
MeshSize {3} = 2.928769;
//+
MeshSize {4} = 2.928769;
//+
MeshSize {5} = 0.599338;
//+
MeshSize {6} = 0.599338;
//+
MeshSize {7} = 0.490374;
//+
MeshSize {8} = 0.490374;
//+
Cylinder(2) = {23.087454, 2.634301, 0.000000, 0.000000, 0.000000, 0.100000, 0.577735, 2*Pi};
//+
MeshSize {9} = 0.057774;
//+
MeshSize {10} = 0.057774;
//+
Cylinder(3) = {25.890567, 2.386706, 0.000000, 0.000000, 0.000000, 0.100000, 0.542517, 2*Pi};
//+
MeshSize {11} = 0.054252;
//+
MeshSize {12} = 0.054252;
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
Save "../msh/cad_411.msh2";
//+
Save "../mesh/cad_411.mesh";
//+
Save "../geo_unrolled/cad_411.geo_unrolled";
