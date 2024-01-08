//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.659649, -3.913818, 0.000000, 36.582219, 8.356678, 0.100000};
//+
MeshSize {1} = 3.252380;
//+
MeshSize {2} = 3.252380;
//+
MeshSize {3} = 3.106351;
//+
MeshSize {4} = 3.106351;
//+
MeshSize {5} = 0.516596;
//+
MeshSize {6} = 0.516596;
//+
MeshSize {7} = 0.542700;
//+
MeshSize {8} = 0.542700;
//+
Cylinder(2) = {16.888075, 0.757082, 0.000000, 0.000000, 0.000000, 0.100000, 0.729814, 2*Pi};
//+
MeshSize {9} = 0.072981;
//+
MeshSize {10} = 0.072981;
//+
Cylinder(3) = {32.012800, 0.036431, 0.000000, 0.000000, 0.000000, 0.100000, 0.919795, 2*Pi};
//+
MeshSize {11} = 0.091980;
//+
MeshSize {12} = 0.091980;
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
Save "../msh/cad_266.msh2";
//+
Save "../mesh/cad_266.mesh";
//+
Save "../geo_unrolled/cad_266.geo_unrolled";
