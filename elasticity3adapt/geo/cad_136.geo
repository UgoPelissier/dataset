//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.579143, -3.744754, 0.000000, 30.944971, 8.324663, 0.100000};
//+
MeshSize {1} = 1.290755;
//+
MeshSize {2} = 1.290755;
//+
MeshSize {3} = 0.945946;
//+
MeshSize {4} = 0.945946;
//+
MeshSize {5} = 1.056291;
//+
MeshSize {6} = 1.056291;
//+
MeshSize {7} = 0.946832;
//+
MeshSize {8} = 0.946832;
//+
Cylinder(2) = {11.974112, 2.775132, 0.000000, 0.000000, 0.000000, 0.100000, 0.999301, 2*Pi};
//+
MeshSize {9} = 0.099930;
//+
MeshSize {10} = 0.099930;
//+
Cylinder(3) = {20.635936, 1.538786, 0.000000, 0.000000, 0.000000, 0.100000, 0.757327, 2*Pi};
//+
MeshSize {11} = 0.075733;
//+
MeshSize {12} = 0.075733;
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
Save "../msh/cad_136.msh2";
//+
Save "../mesh/cad_136.mesh";
//+
Save "../geo_unrolled/cad_136.geo_unrolled";
