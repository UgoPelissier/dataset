//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.780263, -4.318037, 0.000000, 31.039368, 9.915662, 1.000000};
//+
MeshSize {1} = 0.746285;
//+
MeshSize {2} = 0.746285;
//+
MeshSize {3} = 0.653245;
//+
MeshSize {4} = 0.653245;
//+
MeshSize {5} = 2.533747;
//+
MeshSize {6} = 2.533747;
//+
MeshSize {7} = 1.893652;
//+
MeshSize {8} = 1.893652;
//+
Cylinder(2) = {13.765754, 4.072484, 0.000000, 0.000000, 0.000000, 0.100000, 0.555413, 2*Pi};
//+
MeshSize {9} = 0.055541;
//+
MeshSize {10} = 0.055541;
//+
Cylinder(3) = {10.266946, 2.075667, 0.000000, 0.000000, 0.000000, 0.100000, 0.846023, 2*Pi};
//+
MeshSize {11} = 0.084602;
//+
MeshSize {12} = 0.084602;
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
Save "../msh/cad_103.msh2";
//+
Save "../mesh/cad_103.mesh";
//+
Save "../geo_unrolled/cad_103.geo_unrolled";
