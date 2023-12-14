//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.297445, -3.302950, 0.000000, 30.550075, 7.834869, 1.000000};
//+
MeshSize {1} = 0.442897;
//+
MeshSize {2} = 0.442897;
//+
MeshSize {3} = 0.890681;
//+
MeshSize {4} = 0.890681;
//+
MeshSize {5} = 2.218750;
//+
MeshSize {6} = 2.218750;
//+
MeshSize {7} = 2.527383;
//+
MeshSize {8} = 2.527383;
//+
Cylinder(2) = {3.635740, -1.524822, 0.000000, 0.000000, 0.000000, 0.100000, 0.683045, 2*Pi};
//+
MeshSize {9} = 0.068304;
//+
MeshSize {10} = 0.068304;
//+
Cylinder(3) = {21.390797, 0.084811, 0.000000, 0.000000, 0.000000, 0.100000, 0.918239, 2*Pi};
//+
MeshSize {11} = 0.091824;
//+
MeshSize {12} = 0.091824;
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
Save "../msh/cad_158.msh2";
//+
Save "../mesh/cad_158.mesh";
//+
Save "../geo_unrolled/cad_158.geo_unrolled";
