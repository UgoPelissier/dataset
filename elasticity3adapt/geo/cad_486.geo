//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.304613, -4.138003, 0.000000, 30.534471, 9.089497, 0.100000};
//+
MeshSize {1} = 5.036584;
//+
MeshSize {2} = 5.036584;
//+
MeshSize {3} = 5.360155;
//+
MeshSize {4} = 5.360155;
//+
MeshSize {5} = 0.232266;
//+
MeshSize {6} = 0.232266;
//+
MeshSize {7} = 0.303513;
//+
MeshSize {8} = 0.303513;
//+
Cylinder(2) = {28.788495, -0.161918, 0.000000, 0.000000, 0.000000, 0.100000, 1.097868, 2*Pi};
//+
MeshSize {9} = 0.109787;
//+
MeshSize {10} = 0.109787;
//+
Cylinder(3) = {25.889032, -1.089344, 0.000000, 0.000000, 0.000000, 0.100000, 0.851418, 2*Pi};
//+
MeshSize {11} = 0.085142;
//+
MeshSize {12} = 0.085142;
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
Save "../msh/cad_486.msh2";
//+
Save "../mesh/cad_486.mesh";
//+
Save "../geo_unrolled/cad_486.geo_unrolled";
