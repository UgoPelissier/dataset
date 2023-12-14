//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.922088, -2.814458, 0.000000, 33.848582, 7.522831, 1.000000};
//+
MeshSize {1} = 0.916599;
//+
MeshSize {2} = 0.916599;
//+
MeshSize {3} = 1.012787;
//+
MeshSize {4} = 1.012787;
//+
MeshSize {5} = 1.034122;
//+
MeshSize {6} = 1.034122;
//+
MeshSize {7} = 1.217879;
//+
MeshSize {8} = 1.217879;
//+
Cylinder(2) = {14.966525, -1.557808, 0.000000, 0.000000, 0.000000, 0.100000, 0.731215, 2*Pi};
//+
MeshSize {9} = 0.073122;
//+
MeshSize {10} = 0.073122;
//+
Cylinder(3) = {19.490851, -0.791762, 0.000000, 0.000000, 0.000000, 0.100000, 0.663269, 2*Pi};
//+
MeshSize {11} = 0.066327;
//+
MeshSize {12} = 0.066327;
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
Save "../msh/cad_291.msh2";
//+
Save "../mesh/cad_291.mesh";
//+
Save "../geo_unrolled/cad_291.geo_unrolled";
