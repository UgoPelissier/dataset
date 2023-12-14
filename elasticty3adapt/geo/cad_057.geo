//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.009397, -3.792381, 0.000000, 39.002697, 9.194027, 1.000000};
//+
MeshSize {1} = 0.538284;
//+
MeshSize {2} = 0.538284;
//+
MeshSize {3} = 0.678101;
//+
MeshSize {4} = 0.678101;
//+
MeshSize {5} = 2.763057;
//+
MeshSize {6} = 2.763057;
//+
MeshSize {7} = 2.630256;
//+
MeshSize {8} = 2.630256;
//+
Cylinder(2) = {6.162960, -0.535738, 0.000000, 0.000000, 0.000000, 0.100000, 0.845566, 2*Pi};
//+
MeshSize {9} = 0.084557;
//+
MeshSize {10} = 0.084557;
//+
Cylinder(3) = {22.922403, 1.277406, 0.000000, 0.000000, 0.000000, 0.100000, 0.924309, 2*Pi};
//+
MeshSize {11} = 0.092431;
//+
MeshSize {12} = 0.092431;
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
Save "../msh/cad_057.msh2";
//+
Save "../mesh/cad_057.mesh";
//+
Save "../geo_unrolled/cad_057.geo_unrolled";
