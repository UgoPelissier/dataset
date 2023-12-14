//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.407599, -3.465932, 0.000000, 33.750143, 8.017086, 1.000000};
//+
MeshSize {1} = 1.070431;
//+
MeshSize {2} = 1.070431;
//+
MeshSize {3} = 0.964388;
//+
MeshSize {4} = 0.964388;
//+
MeshSize {5} = 0.949206;
//+
MeshSize {6} = 0.949206;
//+
MeshSize {7} = 1.202717;
//+
MeshSize {8} = 1.202717;
//+
Cylinder(2) = {14.312821, 1.984354, 0.000000, 0.000000, 0.000000, 0.100000, 1.046132, 2*Pi};
//+
MeshSize {9} = 0.104613;
//+
MeshSize {10} = 0.104613;
//+
Cylinder(3) = {20.605746, -2.240465, 0.000000, 0.000000, 0.000000, 0.100000, 0.719422, 2*Pi};
//+
MeshSize {11} = 0.071942;
//+
MeshSize {12} = 0.071942;
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
Save "../msh/cad_032.msh2";
//+
Save "../mesh/cad_032.mesh";
//+
Save "../geo_unrolled/cad_032.geo_unrolled";
