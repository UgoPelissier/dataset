//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.662020, -3.181954, 0.000000, 31.334728, 7.564339, 0.100000};
//+
MeshSize {1} = 0.789000;
//+
MeshSize {2} = 0.789000;
//+
MeshSize {3} = 1.926309;
//+
MeshSize {4} = 1.926309;
//+
MeshSize {5} = 0.773028;
//+
MeshSize {6} = 0.773028;
//+
MeshSize {7} = 1.701006;
//+
MeshSize {8} = 1.701006;
//+
Cylinder(2) = {5.466075, -1.574809, 0.000000, 0.000000, 0.000000, 0.100000, 0.581936, 2*Pi};
//+
MeshSize {9} = 0.058194;
//+
MeshSize {10} = 0.058194;
//+
Cylinder(3) = {26.997866, -1.449680, 0.000000, 0.000000, 0.000000, 0.100000, 0.897467, 2*Pi};
//+
MeshSize {11} = 0.089747;
//+
MeshSize {12} = 0.089747;
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
Save "../msh/cad_202.msh2";
//+
Save "../mesh/cad_202.mesh";
//+
Save "../geo_unrolled/cad_202.geo_unrolled";
