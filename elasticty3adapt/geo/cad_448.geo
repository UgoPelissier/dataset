//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.868173, -4.205267, 0.000000, 30.814777, 8.771844, 1.000000};
//+
MeshSize {1} = 2.679857;
//+
MeshSize {2} = 2.679857;
//+
MeshSize {3} = 2.898853;
//+
MeshSize {4} = 2.898853;
//+
MeshSize {5} = 0.649529;
//+
MeshSize {6} = 0.649529;
//+
MeshSize {7} = 0.535611;
//+
MeshSize {8} = 0.535611;
//+
Cylinder(2) = {18.084242, -0.733160, 0.000000, 0.000000, 0.000000, 0.100000, 0.576835, 2*Pi};
//+
MeshSize {9} = 0.057684;
//+
MeshSize {10} = 0.057684;
//+
Cylinder(3) = {24.340535, 1.551814, 0.000000, 0.000000, 0.000000, 0.100000, 1.387368, 2*Pi};
//+
MeshSize {11} = 0.138737;
//+
MeshSize {12} = 0.138737;
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
Save "../msh/cad_448.msh2";
//+
Save "../mesh/cad_448.mesh";
//+
Save "../geo_unrolled/cad_448.geo_unrolled";
