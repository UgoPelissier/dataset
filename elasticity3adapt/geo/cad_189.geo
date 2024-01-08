//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.644685, -4.183610, 0.000000, 31.943522, 9.531868, 1.000000};
//+
MeshSize {1} = 0.678958;
//+
MeshSize {2} = 0.678958;
//+
MeshSize {3} = 1.709474;
//+
MeshSize {4} = 1.709474;
//+
MeshSize {5} = 0.851287;
//+
MeshSize {6} = 0.851287;
//+
MeshSize {7} = 2.068083;
//+
MeshSize {8} = 2.068083;
//+
Cylinder(2) = {27.027230, -1.605644, 0.000000, 0.000000, 0.000000, 0.100000, 0.542696, 2*Pi};
//+
MeshSize {9} = 0.054270;
//+
MeshSize {10} = 0.054270;
//+
Cylinder(3) = {6.098919, -2.098397, 0.000000, 0.000000, 0.000000, 0.100000, 1.383424, 2*Pi};
//+
MeshSize {11} = 0.138342;
//+
MeshSize {12} = 0.138342;
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
Save "../msh/cad_189.msh2";
//+
Save "../mesh/cad_189.mesh";
//+
Save "../geo_unrolled/cad_189.geo_unrolled";
