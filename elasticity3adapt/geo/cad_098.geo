//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.870037, -3.740635, 0.000000, 39.111469, 8.186388, 1.000000};
//+
MeshSize {1} = 2.030845;
//+
MeshSize {2} = 2.030845;
//+
MeshSize {3} = 1.910673;
//+
MeshSize {4} = 1.910673;
//+
MeshSize {5} = 0.724881;
//+
MeshSize {6} = 0.724881;
//+
MeshSize {7} = 0.767877;
//+
MeshSize {8} = 0.767877;
//+
Cylinder(2) = {25.488711, -1.118988, 0.000000, 0.000000, 0.000000, 0.100000, 1.301096, 2*Pi};
//+
MeshSize {9} = 0.130110;
//+
MeshSize {10} = 0.130110;
//+
Cylinder(3) = {24.291680, 2.302929, 0.000000, 0.000000, 0.000000, 0.100000, 0.534799, 2*Pi};
//+
MeshSize {11} = 0.053480;
//+
MeshSize {12} = 0.053480;
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
Save "../msh/cad_098.msh2";
//+
Save "../mesh/cad_098.mesh";
//+
Save "../geo_unrolled/cad_098.geo_unrolled";
