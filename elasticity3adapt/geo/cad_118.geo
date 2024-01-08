//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.933700, -3.106937, 0.000000, 31.800875, 7.804685, 0.100000};
//+
MeshSize {1} = 0.981710;
//+
MeshSize {2} = 0.981710;
//+
MeshSize {3} = 1.215621;
//+
MeshSize {4} = 1.215621;
//+
MeshSize {5} = 0.917127;
//+
MeshSize {6} = 0.917127;
//+
MeshSize {7} = 1.105230;
//+
MeshSize {8} = 1.105230;
//+
Cylinder(2) = {22.148942, -0.938949, 0.000000, 0.000000, 0.000000, 0.100000, 1.480161, 2*Pi};
//+
MeshSize {9} = 0.148016;
//+
MeshSize {10} = 0.148016;
//+
Cylinder(3) = {11.338063, -0.449736, 0.000000, 0.000000, 0.000000, 0.100000, 0.756444, 2*Pi};
//+
MeshSize {11} = 0.075644;
//+
MeshSize {12} = 0.075644;
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
Save "../msh/cad_118.msh2";
//+
Save "../mesh/cad_118.mesh";
//+
Save "../geo_unrolled/cad_118.geo_unrolled";
