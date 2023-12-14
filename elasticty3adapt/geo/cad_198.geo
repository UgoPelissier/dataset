//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.884552, -3.939448, 0.000000, 32.902574, 8.865060, 1.000000};
//+
MeshSize {1} = 0.403163;
//+
MeshSize {2} = 0.403163;
//+
MeshSize {3} = 0.551618;
//+
MeshSize {4} = 0.551618;
//+
MeshSize {5} = 3.903615;
//+
MeshSize {6} = 3.903615;
//+
MeshSize {7} = 3.180880;
//+
MeshSize {8} = 3.180880;
//+
Cylinder(2) = {3.426979, -0.181829, 0.000000, 0.000000, 0.000000, 0.100000, 1.364051, 2*Pi};
//+
MeshSize {9} = 0.136405;
//+
MeshSize {10} = 0.136405;
//+
Cylinder(3) = {21.994390, 1.659188, 0.000000, 0.000000, 0.000000, 0.100000, 0.662657, 2*Pi};
//+
MeshSize {11} = 0.066266;
//+
MeshSize {12} = 0.066266;
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
Save "../msh/cad_198.msh2";
//+
Save "../mesh/cad_198.mesh";
//+
Save "../geo_unrolled/cad_198.geo_unrolled";
