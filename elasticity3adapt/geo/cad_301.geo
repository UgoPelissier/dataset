//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.497549, -3.601782, 0.000000, 35.632843, 8.306500, 0.100000};
//+
MeshSize {1} = 0.224008;
//+
MeshSize {2} = 0.224008;
//+
MeshSize {3} = 0.120715;
//+
MeshSize {4} = 0.120715;
//+
MeshSize {5} = 6.107617;
//+
MeshSize {6} = 6.107617;
//+
MeshSize {7} = 6.101966;
//+
MeshSize {8} = 6.101966;
//+
Cylinder(2) = {2.409169, 2.784284, 0.000000, 0.000000, 0.000000, 0.100000, 0.629774, 2*Pi};
//+
MeshSize {9} = 0.062977;
//+
MeshSize {10} = 0.062977;
//+
Cylinder(3) = {3.568006, 0.589863, 0.000000, 0.000000, 0.000000, 0.100000, 1.336300, 2*Pi};
//+
MeshSize {11} = 0.133630;
//+
MeshSize {12} = 0.133630;
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
Save "../msh/cad_301.msh2";
//+
Save "../mesh/cad_301.mesh";
//+
Save "../geo_unrolled/cad_301.geo_unrolled";
