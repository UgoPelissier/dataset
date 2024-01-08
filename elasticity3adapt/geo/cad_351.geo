//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.102932, -3.339784, 0.000000, 37.864646, 8.314674, 0.100000};
//+
MeshSize {1} = 1.091491;
//+
MeshSize {2} = 1.091491;
//+
MeshSize {3} = 1.289288;
//+
MeshSize {4} = 1.289288;
//+
MeshSize {5} = 0.975632;
//+
MeshSize {6} = 0.975632;
//+
MeshSize {7} = 0.906370;
//+
MeshSize {8} = 0.906370;
//+
Cylinder(2) = {24.658097, 2.431468, 0.000000, 0.000000, 0.000000, 0.100000, 1.032746, 2*Pi};
//+
MeshSize {9} = 0.103275;
//+
MeshSize {10} = 0.103275;
//+
Cylinder(3) = {15.218031, -0.719702, 0.000000, 0.000000, 0.000000, 0.100000, 1.120875, 2*Pi};
//+
MeshSize {11} = 0.112087;
//+
MeshSize {12} = 0.112087;
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
Save "../msh/cad_351.msh2";
//+
Save "../mesh/cad_351.mesh";
//+
Save "../geo_unrolled/cad_351.geo_unrolled";
