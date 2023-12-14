//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.298913, -3.938349, 0.000000, 38.308162, 9.279686, 1.000000};
//+
MeshSize {1} = 4.402877;
//+
MeshSize {2} = 4.402877;
//+
MeshSize {3} = 5.005557;
//+
MeshSize {4} = 5.005557;
//+
MeshSize {5} = 0.358312;
//+
MeshSize {6} = 0.358312;
//+
MeshSize {7} = 0.292079;
//+
MeshSize {8} = 0.292079;
//+
Cylinder(2) = {36.117385, 1.230331, 0.000000, 0.000000, 0.000000, 0.100000, 0.700889, 2*Pi};
//+
MeshSize {9} = 0.070089;
//+
MeshSize {10} = 0.070089;
//+
Cylinder(3) = {24.097285, -1.943357, 0.000000, 0.000000, 0.000000, 0.100000, 0.845294, 2*Pi};
//+
MeshSize {11} = 0.084529;
//+
MeshSize {12} = 0.084529;
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
Save "../msh/cad_238.msh2";
//+
Save "../mesh/cad_238.mesh";
//+
Save "../geo_unrolled/cad_238.geo_unrolled";
