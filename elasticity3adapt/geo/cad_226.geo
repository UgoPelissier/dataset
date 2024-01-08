//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.101290, -4.729940, 0.000000, 32.210312, 9.971665, 0.100000};
//+
MeshSize {1} = 1.499510;
//+
MeshSize {2} = 1.499510;
//+
MeshSize {3} = 1.775850;
//+
MeshSize {4} = 1.775850;
//+
MeshSize {5} = 0.673566;
//+
MeshSize {6} = 0.673566;
//+
MeshSize {7} = 0.970869;
//+
MeshSize {8} = 0.970869;
//+
Cylinder(2) = {9.564951, -0.356214, 0.000000, 0.000000, 0.000000, 0.100000, 0.599809, 2*Pi};
//+
MeshSize {9} = 0.059981;
//+
MeshSize {10} = 0.059981;
//+
Cylinder(3) = {25.900855, -1.867622, 0.000000, 0.000000, 0.000000, 0.100000, 1.238540, 2*Pi};
//+
MeshSize {11} = 0.123854;
//+
MeshSize {12} = 0.123854;
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
Save "../msh/cad_226.msh2";
//+
Save "../mesh/cad_226.mesh";
//+
Save "../geo_unrolled/cad_226.geo_unrolled";
