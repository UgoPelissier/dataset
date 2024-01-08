//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.942442, -3.781383, 0.000000, 37.955090, 7.892759, 0.100000};
//+
MeshSize {1} = 0.334242;
//+
MeshSize {2} = 0.334242;
//+
MeshSize {3} = 0.810811;
//+
MeshSize {4} = 0.810811;
//+
MeshSize {5} = 3.313393;
//+
MeshSize {6} = 3.313393;
//+
MeshSize {7} = 2.538441;
//+
MeshSize {8} = 2.538441;
//+
Cylinder(2) = {3.938679, -2.324019, 0.000000, 0.000000, 0.000000, 0.100000, 0.689984, 2*Pi};
//+
MeshSize {9} = 0.068998;
//+
MeshSize {10} = 0.068998;
//+
Cylinder(3) = {27.119232, 1.752493, 0.000000, 0.000000, 0.000000, 0.100000, 1.229974, 2*Pi};
//+
MeshSize {11} = 0.122997;
//+
MeshSize {12} = 0.122997;
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
Save "../msh/cad_200.msh2";
//+
Save "../mesh/cad_200.mesh";
//+
Save "../geo_unrolled/cad_200.geo_unrolled";
