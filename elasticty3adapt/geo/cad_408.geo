//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.094509, -4.087925, 0.000000, 35.342615, 9.681108, 1.000000};
//+
MeshSize {1} = 3.799764;
//+
MeshSize {2} = 3.799764;
//+
MeshSize {3} = 3.606336;
//+
MeshSize {4} = 3.606336;
//+
MeshSize {5} = 0.494051;
//+
MeshSize {6} = 0.494051;
//+
MeshSize {7} = 0.411973;
//+
MeshSize {8} = 0.411973;
//+
Cylinder(2) = {29.300193, 1.790687, 0.000000, 0.000000, 0.000000, 0.100000, 0.801072, 2*Pi};
//+
MeshSize {9} = 0.080107;
//+
MeshSize {10} = 0.080107;
//+
Cylinder(3) = {24.290154, 1.823404, 0.000000, 0.000000, 0.000000, 0.100000, 0.595833, 2*Pi};
//+
MeshSize {11} = 0.059583;
//+
MeshSize {12} = 0.059583;
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
Save "../msh/cad_408.msh2";
//+
Save "../mesh/cad_408.mesh";
//+
Save "../geo_unrolled/cad_408.geo_unrolled";
