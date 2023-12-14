//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.974128, -3.762679, 0.000000, 36.038484, 7.921890, 1.000000};
//+
MeshSize {1} = 0.170375;
//+
MeshSize {2} = 0.170375;
//+
MeshSize {3} = 0.340738;
//+
MeshSize {4} = 0.340738;
//+
MeshSize {5} = 5.211176;
//+
MeshSize {6} = 5.211176;
//+
MeshSize {7} = 5.406998;
//+
MeshSize {8} = 5.406998;
//+
Cylinder(2) = {14.843349, -0.563220, 0.000000, 0.000000, 0.000000, 0.100000, 0.760158, 2*Pi};
//+
MeshSize {9} = 0.076016;
//+
MeshSize {10} = 0.076016;
//+
Cylinder(3) = {3.296390, -1.046322, 0.000000, 0.000000, 0.000000, 0.100000, 1.447244, 2*Pi};
//+
MeshSize {11} = 0.144724;
//+
MeshSize {12} = 0.144724;
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
Save "../msh/cad_439.msh2";
//+
Save "../mesh/cad_439.mesh";
//+
Save "../geo_unrolled/cad_439.geo_unrolled";
