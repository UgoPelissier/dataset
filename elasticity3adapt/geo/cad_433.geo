//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.490359, -3.770907, 0.000000, 38.996750, 8.291225, 0.100000};
//+
MeshSize {1} = 1.552625;
//+
MeshSize {2} = 1.552625;
//+
MeshSize {3} = 1.390758;
//+
MeshSize {4} = 1.390758;
//+
MeshSize {5} = 0.920790;
//+
MeshSize {6} = 0.920790;
//+
MeshSize {7} = 0.805041;
//+
MeshSize {8} = 0.805041;
//+
Cylinder(2) = {16.733899, 1.515126, 0.000000, 0.000000, 0.000000, 0.100000, 1.463315, 2*Pi};
//+
MeshSize {9} = 0.146332;
//+
MeshSize {10} = 0.146332;
//+
Cylinder(3) = {28.259788, 2.664513, 0.000000, 0.000000, 0.000000, 0.100000, 0.521074, 2*Pi};
//+
MeshSize {11} = 0.052107;
//+
MeshSize {12} = 0.052107;
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
Save "../msh/cad_433.msh2";
//+
Save "../mesh/cad_433.mesh";
//+
Save "../geo_unrolled/cad_433.geo_unrolled";
