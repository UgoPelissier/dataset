//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.084982, -3.424807, 0.000000, 36.491035, 8.387522, 1.000000};
//+
MeshSize {1} = 4.916160;
//+
MeshSize {2} = 4.916160;
//+
MeshSize {3} = 5.260681;
//+
MeshSize {4} = 5.260681;
//+
MeshSize {5} = 0.187180;
//+
MeshSize {6} = 0.187180;
//+
MeshSize {7} = 0.373264;
//+
MeshSize {8} = 0.373264;
//+
Cylinder(2) = {24.779223, -0.841958, 0.000000, 0.000000, 0.000000, 0.100000, 1.252683, 2*Pi};
//+
MeshSize {9} = 0.125268;
//+
MeshSize {10} = 0.125268;
//+
Cylinder(3) = {35.322073, -0.583306, 0.000000, 0.000000, 0.000000, 0.100000, 0.510548, 2*Pi};
//+
MeshSize {11} = 0.051055;
//+
MeshSize {12} = 0.051055;
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
Save "../msh/cad_152.msh2";
//+
Save "../mesh/cad_152.mesh";
//+
Save "../geo_unrolled/cad_152.geo_unrolled";
