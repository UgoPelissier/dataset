//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.313722, -4.313225, 0.000000, 31.264503, 8.790915, 1.000000};
//+
MeshSize {1} = 2.020529;
//+
MeshSize {2} = 2.020529;
//+
MeshSize {3} = 2.168524;
//+
MeshSize {4} = 2.168524;
//+
MeshSize {5} = 0.859294;
//+
MeshSize {6} = 0.859294;
//+
MeshSize {7} = 0.582130;
//+
MeshSize {8} = 0.582130;
//+
Cylinder(2) = {26.745507, 1.632942, 0.000000, 0.000000, 0.000000, 0.100000, 1.292642, 2*Pi};
//+
MeshSize {9} = 0.129264;
//+
MeshSize {10} = 0.129264;
//+
Cylinder(3) = {10.086057, -0.190187, 0.000000, 0.000000, 0.000000, 0.100000, 1.235172, 2*Pi};
//+
MeshSize {11} = 0.123517;
//+
MeshSize {12} = 0.123517;
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
Save "../msh/cad_437.msh2";
//+
Save "../mesh/cad_437.mesh";
//+
Save "../geo_unrolled/cad_437.geo_unrolled";
