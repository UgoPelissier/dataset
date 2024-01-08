//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.474590, -3.619679, 0.000000, 38.228188, 7.529658, 1.000000};
//+
MeshSize {1} = 3.333047;
//+
MeshSize {2} = 3.333047;
//+
MeshSize {3} = 4.319238;
//+
MeshSize {4} = 4.319238;
//+
MeshSize {5} = 0.386218;
//+
MeshSize {6} = 0.386218;
//+
MeshSize {7} = 0.491468;
//+
MeshSize {8} = 0.491468;
//+
Cylinder(2) = {35.886087, -0.385363, 0.000000, 0.000000, 0.000000, 0.100000, 1.178493, 2*Pi};
//+
MeshSize {9} = 0.117849;
//+
MeshSize {10} = 0.117849;
//+
Cylinder(3) = {12.964169, -1.753749, 0.000000, 0.000000, 0.000000, 0.100000, 0.598277, 2*Pi};
//+
MeshSize {11} = 0.059828;
//+
MeshSize {12} = 0.059828;
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
Save "../msh/cad_367.msh2";
//+
Save "../mesh/cad_367.mesh";
//+
Save "../geo_unrolled/cad_367.geo_unrolled";
