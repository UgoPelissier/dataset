//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.553610, -4.582216, 0.000000, 36.873365, 9.773077, 1.000000};
//+
MeshSize {1} = 1.805163;
//+
MeshSize {2} = 1.805163;
//+
MeshSize {3} = 1.700128;
//+
MeshSize {4} = 1.700128;
//+
MeshSize {5} = 1.071341;
//+
MeshSize {6} = 1.071341;
//+
MeshSize {7} = 0.565648;
//+
MeshSize {8} = 0.565648;
//+
Cylinder(2) = {34.449681, 1.957499, 0.000000, 0.000000, 0.000000, 0.100000, 0.946189, 2*Pi};
//+
MeshSize {9} = 0.094619;
//+
MeshSize {10} = 0.094619;
//+
Cylinder(3) = {7.677529, 0.434172, 0.000000, 0.000000, 0.000000, 0.100000, 1.288342, 2*Pi};
//+
MeshSize {11} = 0.128834;
//+
MeshSize {12} = 0.128834;
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
Save "../msh/cad_469.msh2";
//+
Save "../mesh/cad_469.mesh";
//+
Save "../geo_unrolled/cad_469.geo_unrolled";
