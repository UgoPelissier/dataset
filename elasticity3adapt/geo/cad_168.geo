//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.857652, -4.506254, 0.000000, 29.149108, 9.895079, 1.000000};
//+
MeshSize {1} = 0.538248;
//+
MeshSize {2} = 0.538248;
//+
MeshSize {3} = 0.400782;
//+
MeshSize {4} = 0.400782;
//+
MeshSize {5} = 3.706133;
//+
MeshSize {6} = 3.706133;
//+
MeshSize {7} = 3.466506;
//+
MeshSize {8} = 3.466506;
//+
Cylinder(2) = {6.070914, 1.866132, 0.000000, 0.000000, 0.000000, 0.100000, 0.631913, 2*Pi};
//+
MeshSize {9} = 0.063191;
//+
MeshSize {10} = 0.063191;
//+
Cylinder(3) = {8.222436, 1.529660, 0.000000, 0.000000, 0.000000, 0.100000, 0.750389, 2*Pi};
//+
MeshSize {11} = 0.075039;
//+
MeshSize {12} = 0.075039;
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
Save "../msh/cad_168.msh2";
//+
Save "../mesh/cad_168.mesh";
//+
Save "../geo_unrolled/cad_168.geo_unrolled";
