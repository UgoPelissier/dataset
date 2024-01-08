//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.255534, -3.954075, 0.000000, 37.971544, 8.088651, 1.000000};
//+
MeshSize {1} = 0.568546;
//+
MeshSize {2} = 0.568546;
//+
MeshSize {3} = 0.703554;
//+
MeshSize {4} = 0.703554;
//+
MeshSize {5} = 2.528793;
//+
MeshSize {6} = 2.528793;
//+
MeshSize {7} = 2.546099;
//+
MeshSize {8} = 2.546099;
//+
Cylinder(2) = {26.700933, 0.051238, 0.000000, 0.000000, 0.000000, 0.100000, 0.851856, 2*Pi};
//+
MeshSize {9} = 0.085186;
//+
MeshSize {10} = 0.085186;
//+
Cylinder(3) = {5.202408, -0.803512, 0.000000, 0.000000, 0.000000, 0.100000, 1.128296, 2*Pi};
//+
MeshSize {11} = 0.112830;
//+
MeshSize {12} = 0.112830;
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
Save "../msh/cad_436.msh2";
//+
Save "../mesh/cad_436.mesh";
//+
Save "../geo_unrolled/cad_436.geo_unrolled";
