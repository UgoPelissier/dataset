//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.565857, -3.552239, 0.000000, 30.387762, 8.820398, 0.100000};
//+
MeshSize {1} = 4.416923;
//+
MeshSize {2} = 4.416923;
//+
MeshSize {3} = 4.192113;
//+
MeshSize {4} = 4.192113;
//+
MeshSize {5} = 0.312268;
//+
MeshSize {6} = 0.312268;
//+
MeshSize {7} = 0.434573;
//+
MeshSize {8} = 0.434573;
//+
Cylinder(2) = {27.473017, -0.216097, 0.000000, 0.000000, 0.000000, 0.100000, 0.546562, 2*Pi};
//+
MeshSize {9} = 0.054656;
//+
MeshSize {10} = 0.054656;
//+
Cylinder(3) = {23.284998, 1.876199, 0.000000, 0.000000, 0.000000, 0.100000, 0.898296, 2*Pi};
//+
MeshSize {11} = 0.089830;
//+
MeshSize {12} = 0.089830;
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
Save "../msh/cad_142.msh2";
//+
Save "../mesh/cad_142.mesh";
//+
Save "../geo_unrolled/cad_142.geo_unrolled";
