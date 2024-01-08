//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.575879, -4.528194, 0.000000, 33.184674, 9.541236, 0.100000};
//+
MeshSize {1} = 2.203154;
//+
MeshSize {2} = 2.203154;
//+
MeshSize {3} = 2.171051;
//+
MeshSize {4} = 2.171051;
//+
MeshSize {5} = 0.677062;
//+
MeshSize {6} = 0.677062;
//+
MeshSize {7} = 0.726863;
//+
MeshSize {8} = 0.726863;
//+
Cylinder(2) = {19.993912, 0.435358, 0.000000, 0.000000, 0.000000, 0.100000, 1.181713, 2*Pi};
//+
MeshSize {9} = 0.118171;
//+
MeshSize {10} = 0.118171;
//+
Cylinder(3) = {23.914863, -0.587216, 0.000000, 0.000000, 0.000000, 0.100000, 0.791331, 2*Pi};
//+
MeshSize {11} = 0.079133;
//+
MeshSize {12} = 0.079133;
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
Save "../msh/cad_149.msh2";
//+
Save "../mesh/cad_149.mesh";
//+
Save "../geo_unrolled/cad_149.geo_unrolled";
