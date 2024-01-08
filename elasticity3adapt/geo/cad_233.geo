//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.412339, -3.306488, 0.000000, 29.589359, 7.727239, 0.100000};
//+
MeshSize {1} = 4.580698;
//+
MeshSize {2} = 4.580698;
//+
MeshSize {3} = 4.459699;
//+
MeshSize {4} = 4.459699;
//+
MeshSize {5} = 0.204595;
//+
MeshSize {6} = 0.204595;
//+
MeshSize {7} = 0.488611;
//+
MeshSize {8} = 0.488611;
//+
Cylinder(2) = {18.127124, 0.920053, 0.000000, 0.000000, 0.000000, 0.100000, 0.804598, 2*Pi};
//+
MeshSize {9} = 0.080460;
//+
MeshSize {10} = 0.080460;
//+
Cylinder(3) = {28.512267, -1.055985, 0.000000, 0.000000, 0.000000, 0.100000, 0.554275, 2*Pi};
//+
MeshSize {11} = 0.055428;
//+
MeshSize {12} = 0.055428;
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
Save "../msh/cad_233.msh2";
//+
Save "../mesh/cad_233.mesh";
//+
Save "../geo_unrolled/cad_233.geo_unrolled";
