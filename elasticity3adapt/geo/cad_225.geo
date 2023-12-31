//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.496355, -3.955561, 0.000000, 38.834889, 8.326509, 0.100000};
//+
MeshSize {1} = 0.695917;
//+
MeshSize {2} = 0.695917;
//+
MeshSize {3} = 0.728099;
//+
MeshSize {4} = 0.728099;
//+
MeshSize {5} = 2.769321;
//+
MeshSize {6} = 2.769321;
//+
MeshSize {7} = 1.608568;
//+
MeshSize {8} = 1.608568;
//+
Cylinder(2) = {32.850720, 1.407363, 0.000000, 0.000000, 0.000000, 0.100000, 0.649144, 2*Pi};
//+
MeshSize {9} = 0.064914;
//+
MeshSize {10} = 0.064914;
//+
Cylinder(3) = {3.543064, 0.097465, 0.000000, 0.000000, 0.000000, 0.100000, 1.223564, 2*Pi};
//+
MeshSize {11} = 0.122356;
//+
MeshSize {12} = 0.122356;
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
Save "../msh/cad_225.msh2";
//+
Save "../mesh/cad_225.mesh";
//+
Save "../geo_unrolled/cad_225.geo_unrolled";
