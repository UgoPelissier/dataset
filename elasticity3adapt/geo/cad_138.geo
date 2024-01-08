//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.542137, -3.150470, 0.000000, 30.045184, 7.584559, 0.100000};
//+
MeshSize {1} = 1.263706;
//+
MeshSize {2} = 1.263706;
//+
MeshSize {3} = 0.948393;
//+
MeshSize {4} = 0.948393;
//+
MeshSize {5} = 0.899063;
//+
MeshSize {6} = 0.899063;
//+
MeshSize {7} = 1.229873;
//+
MeshSize {8} = 1.229873;
//+
Cylinder(2) = {23.379077, -0.664466, 0.000000, 0.000000, 0.000000, 0.100000, 1.342545, 2*Pi};
//+
MeshSize {9} = 0.134254;
//+
MeshSize {10} = 0.134254;
//+
Cylinder(3) = {7.078927, 1.571290, 0.000000, 0.000000, 0.000000, 0.100000, 0.509141, 2*Pi};
//+
MeshSize {11} = 0.050914;
//+
MeshSize {12} = 0.050914;
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
Save "../msh/cad_138.msh2";
//+
Save "../mesh/cad_138.mesh";
//+
Save "../geo_unrolled/cad_138.geo_unrolled";
