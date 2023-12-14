//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.308258, -3.926897, 0.000000, 37.652965, 9.651756, 1.000000};
//+
MeshSize {1} = 0.453996;
//+
MeshSize {2} = 0.453996;
//+
MeshSize {3} = 0.244111;
//+
MeshSize {4} = 0.244111;
//+
MeshSize {5} = 4.533473;
//+
MeshSize {6} = 4.533473;
//+
MeshSize {7} = 4.466414;
//+
MeshSize {8} = 4.466414;
//+
Cylinder(2) = {3.902172, 2.703614, 0.000000, 0.000000, 0.000000, 0.100000, 1.384135, 2*Pi};
//+
MeshSize {9} = 0.138413;
//+
MeshSize {10} = 0.138413;
//+
Cylinder(3) = {15.426583, 1.164596, 0.000000, 0.000000, 0.000000, 0.100000, 0.654553, 2*Pi};
//+
MeshSize {11} = 0.065455;
//+
MeshSize {12} = 0.065455;
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
Save "../msh/cad_021.msh2";
//+
Save "../mesh/cad_021.mesh";
//+
Save "../geo_unrolled/cad_021.geo_unrolled";
