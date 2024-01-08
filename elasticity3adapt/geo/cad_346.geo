//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.318485, -3.962528, 0.000000, 36.725052, 8.208169, 1.000000};
//+
MeshSize {1} = 0.761662;
//+
MeshSize {2} = 0.761662;
//+
MeshSize {3} = 0.785854;
//+
MeshSize {4} = 0.785854;
//+
MeshSize {5} = 1.920376;
//+
MeshSize {6} = 1.920376;
//+
MeshSize {7} = 1.769409;
//+
MeshSize {8} = 1.769409;
//+
Cylinder(2) = {12.548087, -0.462550, 0.000000, 0.000000, 0.000000, 0.100000, 0.630074, 2*Pi};
//+
MeshSize {9} = 0.063007;
//+
MeshSize {10} = 0.063007;
//+
Cylinder(3) = {17.437711, 1.440500, 0.000000, 0.000000, 0.000000, 0.100000, 0.605927, 2*Pi};
//+
MeshSize {11} = 0.060593;
//+
MeshSize {12} = 0.060593;
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
Save "../msh/cad_346.msh2";
//+
Save "../mesh/cad_346.mesh";
//+
Save "../geo_unrolled/cad_346.geo_unrolled";
