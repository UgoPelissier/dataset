//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.583575, -3.917482, 0.000000, 30.128583, 9.723565, 1.000000};
//+
MeshSize {1} = 0.787544;
//+
MeshSize {2} = 0.787544;
//+
MeshSize {3} = 0.699619;
//+
MeshSize {4} = 0.699619;
//+
MeshSize {5} = 2.302154;
//+
MeshSize {6} = 2.302154;
//+
MeshSize {7} = 1.695453;
//+
MeshSize {8} = 1.695453;
//+
Cylinder(2) = {15.370740, 3.573388, 0.000000, 0.000000, 0.000000, 0.100000, 0.881669, 2*Pi};
//+
MeshSize {9} = 0.088167;
//+
MeshSize {10} = 0.088167;
//+
Cylinder(3) = {9.716819, 2.097066, 0.000000, 0.000000, 0.000000, 0.100000, 1.278941, 2*Pi};
//+
MeshSize {11} = 0.127894;
//+
MeshSize {12} = 0.127894;
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
Save "../msh/cad_218.msh2";
//+
Save "../mesh/cad_218.mesh";
//+
Save "../geo_unrolled/cad_218.geo_unrolled";
