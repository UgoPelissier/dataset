//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.995423, -3.387728, 0.000000, 36.188660, 7.886992, 0.100000};
//+
MeshSize {1} = 1.515897;
//+
MeshSize {2} = 1.515897;
//+
MeshSize {3} = 1.387340;
//+
MeshSize {4} = 1.387340;
//+
MeshSize {5} = 0.860150;
//+
MeshSize {6} = 0.860150;
//+
MeshSize {7} = 0.875799;
//+
MeshSize {8} = 0.875799;
//+
Cylinder(2) = {20.161031, 1.955781, 0.000000, 0.000000, 0.000000, 0.100000, 0.557165, 2*Pi};
//+
MeshSize {9} = 0.055717;
//+
MeshSize {10} = 0.055717;
//+
Cylinder(3) = {21.722108, 0.022481, 0.000000, 0.000000, 0.000000, 0.100000, 1.352720, 2*Pi};
//+
MeshSize {11} = 0.135272;
//+
MeshSize {12} = 0.135272;
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
Save "../msh/cad_014.msh2";
//+
Save "../mesh/cad_014.mesh";
//+
Save "../geo_unrolled/cad_014.geo_unrolled";
