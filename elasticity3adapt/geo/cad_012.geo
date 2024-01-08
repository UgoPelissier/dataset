//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.807497, -4.098404, 0.000000, 30.161811, 8.577628, 0.100000};
//+
MeshSize {1} = 3.493473;
//+
MeshSize {2} = 3.493473;
//+
MeshSize {3} = 3.780761;
//+
MeshSize {4} = 3.780761;
//+
MeshSize {5} = 0.385369;
//+
MeshSize {6} = 0.385369;
//+
MeshSize {7} = 0.539428;
//+
MeshSize {8} = 0.539428;
//+
Cylinder(2) = {13.117937, -0.282850, 0.000000, 0.000000, 0.000000, 0.100000, 1.229076, 2*Pi};
//+
MeshSize {9} = 0.122908;
//+
MeshSize {10} = 0.122908;
//+
Cylinder(3) = {28.592897, -0.487803, 0.000000, 0.000000, 0.000000, 0.100000, 1.361349, 2*Pi};
//+
MeshSize {11} = 0.136135;
//+
MeshSize {12} = 0.136135;
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
Save "../msh/cad_012.msh2";
//+
Save "../mesh/cad_012.mesh";
//+
Save "../geo_unrolled/cad_012.geo_unrolled";
