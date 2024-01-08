//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.869695, -4.547104, 0.000000, 30.605846, 9.751328, 0.100000};
//+
MeshSize {1} = 0.484688;
//+
MeshSize {2} = 0.484688;
//+
MeshSize {3} = 1.562517;
//+
MeshSize {4} = 1.562517;
//+
MeshSize {5} = 0.926737;
//+
MeshSize {6} = 0.926737;
//+
MeshSize {7} = 2.913013;
//+
MeshSize {8} = 2.913013;
//+
Cylinder(2) = {4.091573, -2.431453, 0.000000, 0.000000, 0.000000, 0.100000, 0.674497, 2*Pi};
//+
MeshSize {9} = 0.067450;
//+
MeshSize {10} = 0.067450;
//+
Cylinder(3) = {24.865195, -2.555515, 0.000000, 0.000000, 0.000000, 0.100000, 0.823771, 2*Pi};
//+
MeshSize {11} = 0.082377;
//+
MeshSize {12} = 0.082377;
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
Save "../msh/cad_065.msh2";
//+
Save "../mesh/cad_065.mesh";
//+
Save "../geo_unrolled/cad_065.geo_unrolled";
