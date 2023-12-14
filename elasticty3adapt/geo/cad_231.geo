//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.661713, -4.346792, 0.000000, 32.795782, 9.190739, 1.000000};
//+
MeshSize {1} = 0.576154;
//+
MeshSize {2} = 0.576154;
//+
MeshSize {3} = 0.489715;
//+
MeshSize {4} = 0.489715;
//+
MeshSize {5} = 3.456797;
//+
MeshSize {6} = 3.456797;
//+
MeshSize {7} = 2.876066;
//+
MeshSize {8} = 2.876066;
//+
Cylinder(2) = {12.877007, 3.115964, 0.000000, 0.000000, 0.000000, 0.100000, 1.058344, 2*Pi};
//+
MeshSize {9} = 0.105834;
//+
MeshSize {10} = 0.105834;
//+
Cylinder(3) = {7.451202, 1.317192, 0.000000, 0.000000, 0.000000, 0.100000, 0.903277, 2*Pi};
//+
MeshSize {11} = 0.090328;
//+
MeshSize {12} = 0.090328;
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
Save "../msh/cad_231.msh2";
//+
Save "../mesh/cad_231.mesh";
//+
Save "../geo_unrolled/cad_231.geo_unrolled";
