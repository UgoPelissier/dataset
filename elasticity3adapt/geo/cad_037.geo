//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.822331, -4.438943, 0.000000, 38.785545, 9.088963, 0.100000};
//+
MeshSize {1} = 2.889471;
//+
MeshSize {2} = 2.889471;
//+
MeshSize {3} = 2.381114;
//+
MeshSize {4} = 2.381114;
//+
MeshSize {5} = 0.702171;
//+
MeshSize {6} = 0.702171;
//+
MeshSize {7} = 0.538169;
//+
MeshSize {8} = 0.538169;
//+
Cylinder(2) = {32.823336, 1.884221, 0.000000, 0.000000, 0.000000, 0.100000, 0.935487, 2*Pi};
//+
MeshSize {9} = 0.093549;
//+
MeshSize {10} = 0.093549;
//+
Cylinder(3) = {17.252180, 2.099789, 0.000000, 0.000000, 0.000000, 0.100000, 0.768396, 2*Pi};
//+
MeshSize {11} = 0.076840;
//+
MeshSize {12} = 0.076840;
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
Save "../msh/cad_037.msh2";
//+
Save "../mesh/cad_037.mesh";
//+
Save "../geo_unrolled/cad_037.geo_unrolled";
