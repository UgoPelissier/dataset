//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.357966, -4.444101, 0.000000, 37.321693, 9.242575, 0.100000};
//+
MeshSize {1} = 0.423670;
//+
MeshSize {2} = 0.423670;
//+
MeshSize {3} = 0.311258;
//+
MeshSize {4} = 0.311258;
//+
MeshSize {5} = 3.996624;
//+
MeshSize {6} = 3.996624;
//+
MeshSize {7} = 4.725714;
//+
MeshSize {8} = 4.725714;
//+
Cylinder(2) = {16.751534, -2.573865, 0.000000, 0.000000, 0.000000, 0.100000, 0.519782, 2*Pi};
//+
MeshSize {9} = 0.051978;
//+
MeshSize {10} = 0.051978;
//+
Cylinder(3) = {3.389908, 1.048503, 0.000000, 0.000000, 0.000000, 0.100000, 0.803179, 2*Pi};
//+
MeshSize {11} = 0.080318;
//+
MeshSize {12} = 0.080318;
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
Save "../msh/cad_490.msh2";
//+
Save "../mesh/cad_490.mesh";
//+
Save "../geo_unrolled/cad_490.geo_unrolled";
