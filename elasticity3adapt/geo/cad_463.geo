//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.799755, -3.258540, 0.000000, 35.418669, 8.206143, 0.100000};
//+
MeshSize {1} = 0.859493;
//+
MeshSize {2} = 0.859493;
//+
MeshSize {3} = 0.856434;
//+
MeshSize {4} = 0.856434;
//+
MeshSize {5} = 1.595387;
//+
MeshSize {6} = 1.595387;
//+
MeshSize {7} = 1.388401;
//+
MeshSize {8} = 1.388401;
//+
Cylinder(2) = {27.136810, 1.370889, 0.000000, 0.000000, 0.000000, 0.100000, 0.629097, 2*Pi};
//+
MeshSize {9} = 0.062910;
//+
MeshSize {10} = 0.062910;
//+
Cylinder(3) = {7.225004, 0.867791, 0.000000, 0.000000, 0.000000, 0.100000, 0.600904, 2*Pi};
//+
MeshSize {11} = 0.060090;
//+
MeshSize {12} = 0.060090;
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
Save "../msh/cad_463.msh2";
//+
Save "../mesh/cad_463.mesh";
//+
Save "../geo_unrolled/cad_463.geo_unrolled";
