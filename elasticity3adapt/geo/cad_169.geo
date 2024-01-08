//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.371844, -3.341627, 0.000000, 31.283407, 8.490854, 1.000000};
//+
MeshSize {1} = 0.948923;
//+
MeshSize {2} = 0.948923;
//+
MeshSize {3} = 0.885834;
//+
MeshSize {4} = 0.885834;
//+
MeshSize {5} = 1.372982;
//+
MeshSize {6} = 1.372982;
//+
MeshSize {7} = 1.170230;
//+
MeshSize {8} = 1.170230;
//+
Cylinder(2) = {9.670972, 1.693428, 0.000000, 0.000000, 0.000000, 0.100000, 0.734144, 2*Pi};
//+
MeshSize {9} = 0.073414;
//+
MeshSize {10} = 0.073414;
//+
Cylinder(3) = {20.749549, 1.729570, 0.000000, 0.000000, 0.000000, 0.100000, 0.501086, 2*Pi};
//+
MeshSize {11} = 0.050109;
//+
MeshSize {12} = 0.050109;
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
Save "../msh/cad_169.msh2";
//+
Save "../mesh/cad_169.mesh";
//+
Save "../geo_unrolled/cad_169.geo_unrolled";
