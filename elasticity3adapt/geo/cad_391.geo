//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.945322, -3.214055, 0.000000, 37.934457, 7.777416, 0.100000};
//+
MeshSize {1} = 0.415653;
//+
MeshSize {2} = 0.415653;
//+
MeshSize {3} = 0.431355;
//+
MeshSize {4} = 0.431355;
//+
MeshSize {5} = 3.937284;
//+
MeshSize {6} = 3.937284;
//+
MeshSize {7} = 3.899029;
//+
MeshSize {8} = 3.899029;
//+
Cylinder(2) = {14.214092, 0.926550, 0.000000, 0.000000, 0.000000, 0.100000, 0.865571, 2*Pi};
//+
MeshSize {9} = 0.086557;
//+
MeshSize {10} = 0.086557;
//+
Cylinder(3) = {6.814358, 0.457238, 0.000000, 0.000000, 0.000000, 0.100000, 0.567006, 2*Pi};
//+
MeshSize {11} = 0.056701;
//+
MeshSize {12} = 0.056701;
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
Save "../msh/cad_391.msh2";
//+
Save "../mesh/cad_391.mesh";
//+
Save "../geo_unrolled/cad_391.geo_unrolled";
