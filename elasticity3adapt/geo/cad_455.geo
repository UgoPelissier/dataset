//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.660855, -3.500097, 0.000000, 31.872948, 8.137151, 1.000000};
//+
MeshSize {1} = 0.262892;
//+
MeshSize {2} = 0.262892;
//+
MeshSize {3} = 0.336896;
//+
MeshSize {4} = 0.336896;
//+
MeshSize {5} = 4.930328;
//+
MeshSize {6} = 4.930328;
//+
MeshSize {7} = 4.897549;
//+
MeshSize {8} = 4.897549;
//+
Cylinder(2) = {2.660275, 0.028029, 0.000000, 0.000000, 0.000000, 0.100000, 0.613935, 2*Pi};
//+
MeshSize {9} = 0.061394;
//+
MeshSize {10} = 0.061394;
//+
Cylinder(3) = {9.683606, 0.709628, 0.000000, 0.000000, 0.000000, 0.100000, 0.954998, 2*Pi};
//+
MeshSize {11} = 0.095500;
//+
MeshSize {12} = 0.095500;
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
Save "../msh/cad_455.msh2";
//+
Save "../mesh/cad_455.mesh";
//+
Save "../geo_unrolled/cad_455.geo_unrolled";
