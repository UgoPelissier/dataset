//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.150085, -3.509921, 0.000000, 38.424767, 8.882162, 0.100000};
//+
MeshSize {1} = 2.562162;
//+
MeshSize {2} = 2.562162;
//+
MeshSize {3} = 3.408034;
//+
MeshSize {4} = 3.408034;
//+
MeshSize {5} = 0.678866;
//+
MeshSize {6} = 0.678866;
//+
MeshSize {7} = 0.447890;
//+
MeshSize {8} = 0.447890;
//+
Cylinder(2) = {35.255396, 2.137633, 0.000000, 0.000000, 0.000000, 0.100000, 0.919369, 2*Pi};
//+
MeshSize {9} = 0.091937;
//+
MeshSize {10} = 0.091937;
//+
Cylinder(3) = {12.413465, -0.743822, 0.000000, 0.000000, 0.000000, 0.100000, 1.220288, 2*Pi};
//+
MeshSize {11} = 0.122029;
//+
MeshSize {12} = 0.122029;
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
Save "../msh/cad_181.msh2";
//+
Save "../mesh/cad_181.mesh";
//+
Save "../geo_unrolled/cad_181.geo_unrolled";
