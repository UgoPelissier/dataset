//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.708966, -3.669185, 0.000000, 38.157569, 8.616575, 0.100000};
//+
MeshSize {1} = 0.553124;
//+
MeshSize {2} = 0.553124;
//+
MeshSize {3} = 0.687669;
//+
MeshSize {4} = 0.687669;
//+
MeshSize {5} = 2.710273;
//+
MeshSize {6} = 2.710273;
//+
MeshSize {7} = 2.543117;
//+
MeshSize {8} = 2.543117;
//+
Cylinder(2) = {10.307889, -2.158100, 0.000000, 0.000000, 0.000000, 0.100000, 0.567795, 2*Pi};
//+
MeshSize {9} = 0.056779;
//+
MeshSize {10} = 0.056779;
//+
Cylinder(3) = {15.000038, 2.004082, 0.000000, 0.000000, 0.000000, 0.100000, 1.469102, 2*Pi};
//+
MeshSize {11} = 0.146910;
//+
MeshSize {12} = 0.146910;
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
Save "../msh/cad_197.msh2";
//+
Save "../mesh/cad_197.mesh";
//+
Save "../geo_unrolled/cad_197.geo_unrolled";
