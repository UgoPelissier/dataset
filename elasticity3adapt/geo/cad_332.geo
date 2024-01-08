//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.458643, -2.901777, 0.000000, 34.976369, 7.514376, 0.100000};
//+
MeshSize {1} = 1.338865;
//+
MeshSize {2} = 1.338865;
//+
MeshSize {3} = 1.517554;
//+
MeshSize {4} = 1.517554;
//+
MeshSize {5} = 0.866500;
//+
MeshSize {6} = 0.866500;
//+
MeshSize {7} = 0.882176;
//+
MeshSize {8} = 0.882176;
//+
Cylinder(2) = {16.856860, -0.675156, 0.000000, 0.000000, 0.000000, 0.100000, 0.579405, 2*Pi};
//+
MeshSize {9} = 0.057940;
//+
MeshSize {10} = 0.057940;
//+
Cylinder(3) = {21.961417, 0.432442, 0.000000, 0.000000, 0.000000, 0.100000, 1.325253, 2*Pi};
//+
MeshSize {11} = 0.132525;
//+
MeshSize {12} = 0.132525;
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
Save "../msh/cad_332.msh2";
//+
Save "../mesh/cad_332.mesh";
//+
Save "../geo_unrolled/cad_332.geo_unrolled";
