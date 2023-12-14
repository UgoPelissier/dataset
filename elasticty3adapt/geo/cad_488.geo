//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.610445, -3.645209, 0.000000, 32.572594, 9.205252, 1.000000};
//+
MeshSize {1} = 0.956661;
//+
MeshSize {2} = 0.956661;
//+
MeshSize {3} = 1.174710;
//+
MeshSize {4} = 1.174710;
//+
MeshSize {5} = 0.929872;
//+
MeshSize {6} = 0.929872;
//+
MeshSize {7} = 1.185387;
//+
MeshSize {8} = 1.185387;
//+
Cylinder(2) = {11.336315, -0.370057, 0.000000, 0.000000, 0.000000, 0.100000, 1.099514, 2*Pi};
//+
MeshSize {9} = 0.109951;
//+
MeshSize {10} = 0.109951;
//+
Cylinder(3) = {22.322443, -0.799356, 0.000000, 0.000000, 0.000000, 0.100000, 1.395268, 2*Pi};
//+
MeshSize {11} = 0.139527;
//+
MeshSize {12} = 0.139527;
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
Save "../msh/cad_488.msh2";
//+
Save "../mesh/cad_488.mesh";
//+
Save "../geo_unrolled/cad_488.geo_unrolled";
