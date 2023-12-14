//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.317758, -4.280481, 0.000000, 39.116264, 9.771117, 1.000000};
//+
MeshSize {1} = 0.425063;
//+
MeshSize {2} = 0.425063;
//+
MeshSize {3} = 0.242532;
//+
MeshSize {4} = 0.242532;
//+
MeshSize {5} = 4.428259;
//+
MeshSize {6} = 4.428259;
//+
MeshSize {7} = 4.829049;
//+
MeshSize {8} = 4.829049;
//+
Cylinder(2) = {14.575996, -1.242582, 0.000000, 0.000000, 0.000000, 0.100000, 0.784650, 2*Pi};
//+
MeshSize {9} = 0.078465;
//+
MeshSize {10} = 0.078465;
//+
Cylinder(3) = {3.454366, 2.226382, 0.000000, 0.000000, 0.000000, 0.100000, 0.944220, 2*Pi};
//+
MeshSize {11} = 0.094422;
//+
MeshSize {12} = 0.094422;
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
Save "../msh/cad_402.msh2";
//+
Save "../mesh/cad_402.mesh";
//+
Save "../geo_unrolled/cad_402.geo_unrolled";
