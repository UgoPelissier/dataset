//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.787308, -4.296289, 0.000000, 33.766071, 8.947416, 0.100000};
//+
MeshSize {1} = 0.743818;
//+
MeshSize {2} = 0.743818;
//+
MeshSize {3} = 0.799285;
//+
MeshSize {4} = 0.799285;
//+
MeshSize {5} = 1.871133;
//+
MeshSize {6} = 1.871133;
//+
MeshSize {7} = 1.836643;
//+
MeshSize {8} = 1.836643;
//+
Cylinder(2) = {12.735319, -1.083180, 0.000000, 0.000000, 0.000000, 0.100000, 0.567667, 2*Pi};
//+
MeshSize {9} = 0.056767;
//+
MeshSize {10} = 0.056767;
//+
Cylinder(3) = {14.765482, 0.451586, 0.000000, 0.000000, 0.000000, 0.100000, 0.792833, 2*Pi};
//+
MeshSize {11} = 0.079283;
//+
MeshSize {12} = 0.079283;
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
Save "../msh/cad_334.msh2";
//+
Save "../mesh/cad_334.mesh";
//+
Save "../geo_unrolled/cad_334.geo_unrolled";
