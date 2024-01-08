//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.845419, -3.135781, 0.000000, 37.919529, 7.952840, 1.000000};
//+
MeshSize {1} = 3.430628;
//+
MeshSize {2} = 3.430628;
//+
MeshSize {3} = 3.709602;
//+
MeshSize {4} = 3.709602;
//+
MeshSize {5} = 0.507213;
//+
MeshSize {6} = 0.507213;
//+
MeshSize {7} = 0.436574;
//+
MeshSize {8} = 0.436574;
//+
Cylinder(2) = {31.335408, 2.090946, 0.000000, 0.000000, 0.000000, 0.100000, 0.683068, 2*Pi};
//+
MeshSize {9} = 0.068307;
//+
MeshSize {10} = 0.068307;
//+
Cylinder(3) = {26.349015, -1.307189, 0.000000, 0.000000, 0.000000, 0.100000, 0.589300, 2*Pi};
//+
MeshSize {11} = 0.058930;
//+
MeshSize {12} = 0.058930;
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
Save "../msh/cad_216.msh2";
//+
Save "../mesh/cad_216.mesh";
//+
Save "../geo_unrolled/cad_216.geo_unrolled";
