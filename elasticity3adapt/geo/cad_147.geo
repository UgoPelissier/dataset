//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.251700, -4.245668, 0.000000, 35.998637, 8.984516, 0.100000};
//+
MeshSize {1} = 5.340844;
//+
MeshSize {2} = 5.340844;
//+
MeshSize {3} = 5.656827;
//+
MeshSize {4} = 5.656827;
//+
MeshSize {5} = 0.135634;
//+
MeshSize {6} = 0.135634;
//+
MeshSize {7} = 0.334591;
//+
MeshSize {8} = 0.334591;
//+
Cylinder(2) = {34.395170, -1.507447, 0.000000, 0.000000, 0.000000, 0.100000, 1.120192, 2*Pi};
//+
MeshSize {9} = 0.112019;
//+
MeshSize {10} = 0.112019;
//+
Cylinder(3) = {29.148043, -1.531485, 0.000000, 0.000000, 0.000000, 0.100000, 0.834736, 2*Pi};
//+
MeshSize {11} = 0.083474;
//+
MeshSize {12} = 0.083474;
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
Save "../msh/cad_147.msh2";
//+
Save "../mesh/cad_147.mesh";
//+
Save "../geo_unrolled/cad_147.geo_unrolled";
