//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.153127, -3.431204, 0.000000, 36.149986, 8.252791, 0.100000};
//+
MeshSize {1} = 0.672852;
//+
MeshSize {2} = 0.672852;
//+
MeshSize {3} = 0.480733;
//+
MeshSize {4} = 0.480733;
//+
MeshSize {5} = 3.030790;
//+
MeshSize {6} = 3.030790;
//+
MeshSize {7} = 2.739577;
//+
MeshSize {8} = 2.739577;
//+
Cylinder(2) = {24.020484, 1.340938, 0.000000, 0.000000, 0.000000, 0.100000, 0.769977, 2*Pi};
//+
MeshSize {9} = 0.076998;
//+
MeshSize {10} = 0.076998;
//+
Cylinder(3) = {3.808713, 1.805432, 0.000000, 0.000000, 0.000000, 0.100000, 0.617735, 2*Pi};
//+
MeshSize {11} = 0.061773;
//+
MeshSize {12} = 0.061773;
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
Save "../msh/cad_223.msh2";
//+
Save "../mesh/cad_223.mesh";
//+
Save "../geo_unrolled/cad_223.geo_unrolled";
