//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.393717, -4.284295, 0.000000, 31.354287, 9.941268, 1.000000};
//+
MeshSize {1} = 1.174413;
//+
MeshSize {2} = 1.174413;
//+
MeshSize {3} = 1.049345;
//+
MeshSize {4} = 1.049345;
//+
MeshSize {5} = 0.914702;
//+
MeshSize {6} = 0.914702;
//+
MeshSize {7} = 1.042780;
//+
MeshSize {8} = 1.042780;
//+
Cylinder(2) = {22.167871, -0.396949, 0.000000, 0.000000, 0.000000, 0.100000, 1.189211, 2*Pi};
//+
MeshSize {9} = 0.118921;
//+
MeshSize {10} = 0.118921;
//+
Cylinder(3) = {10.331950, 1.121157, 0.000000, 0.000000, 0.000000, 0.100000, 0.759701, 2*Pi};
//+
MeshSize {11} = 0.075970;
//+
MeshSize {12} = 0.075970;
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
Save "../msh/cad_280.msh2";
//+
Save "../mesh/cad_280.mesh";
//+
Save "../geo_unrolled/cad_280.geo_unrolled";
