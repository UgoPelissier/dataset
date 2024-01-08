//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.734200, -3.052680, 0.000000, 39.019542, 7.826915, 0.100000};
//+
MeshSize {1} = 0.175407;
//+
MeshSize {2} = 0.175407;
//+
MeshSize {3} = 0.432349;
//+
MeshSize {4} = 0.432349;
//+
MeshSize {5} = 4.844638;
//+
MeshSize {6} = 4.844638;
//+
MeshSize {7} = 4.914437;
//+
MeshSize {8} = 4.914437;
//+
Cylinder(2) = {14.730359, 0.482539, 0.000000, 0.000000, 0.000000, 0.100000, 0.819116, 2*Pi};
//+
MeshSize {9} = 0.081912;
//+
MeshSize {10} = 0.081912;
//+
Cylinder(3) = {3.848625, -1.641993, 0.000000, 0.000000, 0.000000, 0.100000, 0.884150, 2*Pi};
//+
MeshSize {11} = 0.088415;
//+
MeshSize {12} = 0.088415;
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
Save "../msh/cad_108.msh2";
//+
Save "../mesh/cad_108.mesh";
//+
Save "../geo_unrolled/cad_108.geo_unrolled";
