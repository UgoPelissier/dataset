//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.867410, -3.576465, 0.000000, 31.444276, 8.451753, 0.100000};
//+
MeshSize {1} = 2.945729;
//+
MeshSize {2} = 2.945729;
//+
MeshSize {3} = 3.289957;
//+
MeshSize {4} = 3.289957;
//+
MeshSize {5} = 0.512604;
//+
MeshSize {6} = 0.512604;
//+
MeshSize {7} = 0.566603;
//+
MeshSize {8} = 0.566603;
//+
Cylinder(2) = {28.006889, 0.266743, 0.000000, 0.000000, 0.000000, 0.100000, 0.686417, 2*Pi};
//+
MeshSize {9} = 0.068642;
//+
MeshSize {10} = 0.068642;
//+
Cylinder(3) = {16.176872, -0.355090, 0.000000, 0.000000, 0.000000, 0.100000, 1.426350, 2*Pi};
//+
MeshSize {11} = 0.142635;
//+
MeshSize {12} = 0.142635;
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
Save "../msh/cad_318.msh2";
//+
Save "../mesh/cad_318.mesh";
//+
Save "../geo_unrolled/cad_318.geo_unrolled";
