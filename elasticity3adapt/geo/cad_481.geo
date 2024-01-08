//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.561044, -3.866752, 0.000000, 35.032484, 7.981067, 0.100000};
//+
MeshSize {1} = 0.790850;
//+
MeshSize {2} = 0.790850;
//+
MeshSize {3} = 0.667805;
//+
MeshSize {4} = 0.667805;
//+
MeshSize {5} = 2.114742;
//+
MeshSize {6} = 2.114742;
//+
MeshSize {7} = 1.989804;
//+
MeshSize {8} = 1.989804;
//+
Cylinder(2) = {22.021860, 0.613390, 0.000000, 0.000000, 0.000000, 0.100000, 0.552874, 2*Pi};
//+
MeshSize {9} = 0.055287;
//+
MeshSize {10} = 0.055287;
//+
Cylinder(3) = {8.730619, 1.641049, 0.000000, 0.000000, 0.000000, 0.100000, 1.387656, 2*Pi};
//+
MeshSize {11} = 0.138766;
//+
MeshSize {12} = 0.138766;
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
Save "../msh/cad_481.msh2";
//+
Save "../mesh/cad_481.mesh";
//+
Save "../geo_unrolled/cad_481.geo_unrolled";
