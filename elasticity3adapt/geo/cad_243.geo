//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.784307, -3.781795, 0.000000, 32.092079, 9.161234, 0.100000};
//+
MeshSize {1} = 5.462343;
//+
MeshSize {2} = 5.462343;
//+
MeshSize {3} = 4.863137;
//+
MeshSize {4} = 4.863137;
//+
MeshSize {5} = 0.158083;
//+
MeshSize {6} = 0.158083;
//+
MeshSize {7} = 0.386551;
//+
MeshSize {8} = 0.386551;
//+
Cylinder(2) = {30.459473, -1.030138, 0.000000, 0.000000, 0.000000, 0.100000, 1.456702, 2*Pi};
//+
MeshSize {9} = 0.145670;
//+
MeshSize {10} = 0.145670;
//+
Cylinder(3) = {25.673989, 3.390738, 0.000000, 0.000000, 0.000000, 0.100000, 1.329983, 2*Pi};
//+
MeshSize {11} = 0.132998;
//+
MeshSize {12} = 0.132998;
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
Save "../msh/cad_243.msh2";
//+
Save "../mesh/cad_243.mesh";
//+
Save "../geo_unrolled/cad_243.geo_unrolled";
