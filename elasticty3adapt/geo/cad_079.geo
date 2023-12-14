//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.627217, -4.151803, 0.000000, 30.055645, 8.605520, 1.000000};
//+
MeshSize {1} = 0.694306;
//+
MeshSize {2} = 0.694306;
//+
MeshSize {3} = 0.845407;
//+
MeshSize {4} = 0.845407;
//+
MeshSize {5} = 1.685074;
//+
MeshSize {6} = 1.685074;
//+
MeshSize {7} = 2.049870;
//+
MeshSize {8} = 2.049870;
//+
Cylinder(2) = {9.291398, -1.939050, 0.000000, 0.000000, 0.000000, 0.100000, 0.556172, 2*Pi};
//+
MeshSize {9} = 0.055617;
//+
MeshSize {10} = 0.055617;
//+
Cylinder(3) = {15.566548, -1.631539, 0.000000, 0.000000, 0.000000, 0.100000, 0.951914, 2*Pi};
//+
MeshSize {11} = 0.095191;
//+
MeshSize {12} = 0.095191;
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
Save "../msh/cad_079.msh2";
//+
Save "../mesh/cad_079.mesh";
//+
Save "../geo_unrolled/cad_079.geo_unrolled";
