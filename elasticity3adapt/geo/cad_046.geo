//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.942676, -3.350080, 0.000000, 33.995276, 7.701105, 1.000000};
//+
MeshSize {1} = 3.800989;
//+
MeshSize {2} = 3.800989;
//+
MeshSize {3} = 3.677475;
//+
MeshSize {4} = 3.677475;
//+
MeshSize {5} = 0.451521;
//+
MeshSize {6} = 0.451521;
//+
MeshSize {7} = 0.444318;
//+
MeshSize {8} = 0.444318;
//+
Cylinder(2) = {29.206682, 0.579116, 0.000000, 0.000000, 0.000000, 0.100000, 1.450786, 2*Pi};
//+
MeshSize {9} = 0.145079;
//+
MeshSize {10} = 0.145079;
//+
Cylinder(3) = {20.450218, 1.037991, 0.000000, 0.000000, 0.000000, 0.100000, 0.991726, 2*Pi};
//+
MeshSize {11} = 0.099173;
//+
MeshSize {12} = 0.099173;
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
Save "../msh/cad_046.msh2";
//+
Save "../mesh/cad_046.mesh";
//+
Save "../geo_unrolled/cad_046.geo_unrolled";
