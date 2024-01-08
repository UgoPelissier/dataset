//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.935308, -3.546600, 0.000000, 33.894011, 8.770832, 0.100000};
//+
MeshSize {1} = 0.988863;
//+
MeshSize {2} = 0.988863;
//+
MeshSize {3} = 0.946395;
//+
MeshSize {4} = 0.946395;
//+
MeshSize {5} = 1.289054;
//+
MeshSize {6} = 1.289054;
//+
MeshSize {7} = 0.976421;
//+
MeshSize {8} = 0.976421;
//+
Cylinder(2) = {20.916609, 3.356561, 0.000000, 0.000000, 0.000000, 0.100000, 1.004110, 2*Pi};
//+
MeshSize {9} = 0.100411;
//+
MeshSize {10} = 0.100411;
//+
Cylinder(3) = {14.375644, 1.754292, 0.000000, 0.000000, 0.000000, 0.100000, 1.248427, 2*Pi};
//+
MeshSize {11} = 0.124843;
//+
MeshSize {12} = 0.124843;
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
Save "../msh/cad_237.msh2";
//+
Save "../mesh/cad_237.mesh";
//+
Save "../geo_unrolled/cad_237.geo_unrolled";
