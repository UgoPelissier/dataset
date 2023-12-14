//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.617965, -3.707332, 0.000000, 35.929614, 7.520835, 1.000000};
//+
MeshSize {1} = 0.968539;
//+
MeshSize {2} = 0.968539;
//+
MeshSize {3} = 1.131407;
//+
MeshSize {4} = 1.131407;
//+
MeshSize {5} = 1.172447;
//+
MeshSize {6} = 1.172447;
//+
MeshSize {7} = 0.934986;
//+
MeshSize {8} = 0.934986;
//+
Cylinder(2) = {14.204039, -1.719937, 0.000000, 0.000000, 0.000000, 0.100000, 1.352083, 2*Pi};
//+
MeshSize {9} = 0.135208;
//+
MeshSize {10} = 0.135208;
//+
Cylinder(3) = {24.125070, 2.739707, 0.000000, 0.000000, 0.000000, 0.100000, 0.519078, 2*Pi};
//+
MeshSize {11} = 0.051908;
//+
MeshSize {12} = 0.051908;
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
Save "../msh/cad_317.msh2";
//+
Save "../mesh/cad_317.mesh";
//+
Save "../geo_unrolled/cad_317.geo_unrolled";
