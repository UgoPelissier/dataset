//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.265265, -3.530521, 0.000000, 32.110218, 7.624089, 1.000000};
//+
MeshSize {1} = 0.874591;
//+
MeshSize {2} = 0.874591;
//+
MeshSize {3} = 0.916459;
//+
MeshSize {4} = 0.916459;
//+
MeshSize {5} = 1.531074;
//+
MeshSize {6} = 1.531074;
//+
MeshSize {7} = 1.178874;
//+
MeshSize {8} = 1.178874;
//+
Cylinder(2) = {18.511324, 2.591081, 0.000000, 0.000000, 0.000000, 0.100000, 0.653590, 2*Pi};
//+
MeshSize {9} = 0.065359;
//+
MeshSize {10} = 0.065359;
//+
Cylinder(3) = {11.682011, -0.551939, 0.000000, 0.000000, 0.000000, 0.100000, 0.794549, 2*Pi};
//+
MeshSize {11} = 0.079455;
//+
MeshSize {12} = 0.079455;
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
Save "../msh/cad_201.msh2";
//+
Save "../mesh/cad_201.mesh";
//+
Save "../geo_unrolled/cad_201.geo_unrolled";
