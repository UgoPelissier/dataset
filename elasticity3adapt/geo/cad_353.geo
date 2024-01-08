//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.236154, -4.250967, 0.000000, 30.542790, 9.827158, 0.100000};
//+
MeshSize {1} = 1.060380;
//+
MeshSize {2} = 1.060380;
//+
MeshSize {3} = 1.079422;
//+
MeshSize {4} = 1.079422;
//+
MeshSize {5} = 0.956186;
//+
MeshSize {6} = 0.956186;
//+
MeshSize {7} = 0.998277;
//+
MeshSize {8} = 0.998277;
//+
Cylinder(2) = {17.672909, -0.131386, 0.000000, 0.000000, 0.000000, 0.100000, 1.092163, 2*Pi};
//+
MeshSize {9} = 0.109216;
//+
MeshSize {10} = 0.109216;
//+
Cylinder(3) = {14.247833, 0.541356, 0.000000, 0.000000, 0.000000, 0.100000, 1.322023, 2*Pi};
//+
MeshSize {11} = 0.132202;
//+
MeshSize {12} = 0.132202;
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
Save "../msh/cad_353.msh2";
//+
Save "../mesh/cad_353.mesh";
//+
Save "../geo_unrolled/cad_353.geo_unrolled";
