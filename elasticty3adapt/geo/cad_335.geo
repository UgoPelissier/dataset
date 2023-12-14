//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.134546, -3.714196, 0.000000, 32.609640, 8.817632, 1.000000};
//+
MeshSize {1} = 0.567185;
//+
MeshSize {2} = 0.567185;
//+
MeshSize {3} = 0.355719;
//+
MeshSize {4} = 0.355719;
//+
MeshSize {5} = 3.848947;
//+
MeshSize {6} = 3.848947;
//+
MeshSize {7} = 3.442496;
//+
MeshSize {8} = 3.442496;
//+
Cylinder(2) = {17.179113, 1.726752, 0.000000, 0.000000, 0.000000, 0.100000, 1.112054, 2*Pi};
//+
MeshSize {9} = 0.111205;
//+
MeshSize {10} = 0.111205;
//+
Cylinder(3) = {3.579013, 2.025662, 0.000000, 0.000000, 0.000000, 0.100000, 1.128979, 2*Pi};
//+
MeshSize {11} = 0.112898;
//+
MeshSize {12} = 0.112898;
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
Save "../msh/cad_335.msh2";
//+
Save "../mesh/cad_335.mesh";
//+
Save "../geo_unrolled/cad_335.geo_unrolled";
