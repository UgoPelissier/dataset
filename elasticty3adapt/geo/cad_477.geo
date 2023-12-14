//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.589624, -4.812670, 0.000000, 38.352905, 9.722643, 1.000000};
//+
MeshSize {1} = 0.225888;
//+
MeshSize {2} = 0.225888;
//+
MeshSize {3} = 0.355345;
//+
MeshSize {4} = 0.355345;
//+
MeshSize {5} = 5.236506;
//+
MeshSize {6} = 5.236506;
//+
MeshSize {7} = 4.760659;
//+
MeshSize {8} = 4.760659;
//+
Cylinder(2) = {8.395287, 3.102739, 0.000000, 0.000000, 0.000000, 0.100000, 0.988794, 2*Pi};
//+
MeshSize {9} = 0.098879;
//+
MeshSize {10} = 0.098879;
//+
Cylinder(3) = {4.763758, -1.471532, 0.000000, 0.000000, 0.000000, 0.100000, 1.370427, 2*Pi};
//+
MeshSize {11} = 0.137043;
//+
MeshSize {12} = 0.137043;
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
Save "../msh/cad_477.msh2";
//+
Save "../mesh/cad_477.mesh";
//+
Save "../geo_unrolled/cad_477.geo_unrolled";
