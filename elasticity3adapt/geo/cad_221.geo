//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.167020, -3.289691, 0.000000, 32.815002, 8.227069, 0.100000};
//+
MeshSize {1} = 4.606801;
//+
MeshSize {2} = 4.606801;
//+
MeshSize {3} = 4.613045;
//+
MeshSize {4} = 4.613045;
//+
MeshSize {5} = 0.228089;
//+
MeshSize {6} = 0.228089;
//+
MeshSize {7} = 0.443314;
//+
MeshSize {8} = 0.443314;
//+
Cylinder(2) = {24.005369, 0.792842, 0.000000, 0.000000, 0.000000, 0.100000, 0.837835, 2*Pi};
//+
MeshSize {9} = 0.083784;
//+
MeshSize {10} = 0.083784;
//+
Cylinder(3) = {29.729460, -1.157953, 0.000000, 0.000000, 0.000000, 0.100000, 0.688426, 2*Pi};
//+
MeshSize {11} = 0.068843;
//+
MeshSize {12} = 0.068843;
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
Save "../msh/cad_221.msh2";
//+
Save "../mesh/cad_221.mesh";
//+
Save "../geo_unrolled/cad_221.geo_unrolled";
