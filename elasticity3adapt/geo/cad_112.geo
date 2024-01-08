//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.509123, -3.421218, 0.000000, 29.943911, 7.842591, 0.100000};
//+
MeshSize {1} = 0.865461;
//+
MeshSize {2} = 0.865461;
//+
MeshSize {3} = 0.915450;
//+
MeshSize {4} = 0.915450;
//+
MeshSize {5} = 1.325491;
//+
MeshSize {6} = 1.325491;
//+
MeshSize {7} = 1.407219;
//+
MeshSize {8} = 1.407219;
//+
Cylinder(2) = {10.142100, -0.205914, 0.000000, 0.000000, 0.000000, 0.100000, 0.956989, 2*Pi};
//+
MeshSize {9} = 0.095699;
//+
MeshSize {10} = 0.095699;
//+
Cylinder(3) = {18.462472, 0.121605, 0.000000, 0.000000, 0.000000, 0.100000, 0.827966, 2*Pi};
//+
MeshSize {11} = 0.082797;
//+
MeshSize {12} = 0.082797;
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
Save "../msh/cad_112.msh2";
//+
Save "../mesh/cad_112.mesh";
//+
Save "../geo_unrolled/cad_112.geo_unrolled";
