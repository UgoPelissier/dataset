//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.192763, -3.228933, 0.000000, 38.177003, 8.123726, 0.100000};
//+
MeshSize {1} = 0.639780;
//+
MeshSize {2} = 0.639780;
//+
MeshSize {3} = 0.563186;
//+
MeshSize {4} = 0.563186;
//+
MeshSize {5} = 2.731325;
//+
MeshSize {6} = 2.731325;
//+
MeshSize {7} = 2.739253;
//+
MeshSize {8} = 2.739253;
//+
Cylinder(2) = {10.512453, 2.628076, 0.000000, 0.000000, 0.000000, 0.100000, 1.005126, 2*Pi};
//+
MeshSize {9} = 0.100513;
//+
MeshSize {10} = 0.100513;
//+
Cylinder(3) = {14.291463, 0.763984, 0.000000, 0.000000, 0.000000, 0.100000, 0.677584, 2*Pi};
//+
MeshSize {11} = 0.067758;
//+
MeshSize {12} = 0.067758;
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
Save "../msh/cad_210.msh2";
//+
Save "../mesh/cad_210.mesh";
//+
Save "../geo_unrolled/cad_210.geo_unrolled";
