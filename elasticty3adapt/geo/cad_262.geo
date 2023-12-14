//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.653675, -4.429040, 0.000000, 35.879690, 9.588673, 1.000000};
//+
MeshSize {1} = 0.509670;
//+
MeshSize {2} = 0.509670;
//+
MeshSize {3} = 0.338981;
//+
MeshSize {4} = 0.338981;
//+
MeshSize {5} = 3.638196;
//+
MeshSize {6} = 3.638196;
//+
MeshSize {7} = 4.199218;
//+
MeshSize {8} = 4.199218;
//+
Cylinder(2) = {18.875434, -1.185843, 0.000000, 0.000000, 0.000000, 0.100000, 1.407242, 2*Pi};
//+
MeshSize {9} = 0.140724;
//+
MeshSize {10} = 0.140724;
//+
Cylinder(3) = {2.816292, 1.375754, 0.000000, 0.000000, 0.000000, 0.100000, 0.711517, 2*Pi};
//+
MeshSize {11} = 0.071152;
//+
MeshSize {12} = 0.071152;
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
Save "../msh/cad_262.msh2";
//+
Save "../mesh/cad_262.mesh";
//+
Save "../geo_unrolled/cad_262.geo_unrolled";
