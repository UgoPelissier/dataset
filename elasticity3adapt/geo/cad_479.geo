//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.460936, -4.383003, 0.000000, 34.029811, 9.665864, 1.000000};
//+
MeshSize {1} = 0.760925;
//+
MeshSize {2} = 0.760925;
//+
MeshSize {3} = 0.634060;
//+
MeshSize {4} = 0.634060;
//+
MeshSize {5} = 1.990312;
//+
MeshSize {6} = 1.990312;
//+
MeshSize {7} = 2.444724;
//+
MeshSize {8} = 2.444724;
//+
Cylinder(2) = {11.216953, 2.897938, 0.000000, 0.000000, 0.000000, 0.100000, 1.164502, 2*Pi};
//+
MeshSize {9} = 0.116450;
//+
MeshSize {10} = 0.116450;
//+
Cylinder(3) = {14.128387, -2.582503, 0.000000, 0.000000, 0.000000, 0.100000, 0.895397, 2*Pi};
//+
MeshSize {11} = 0.089540;
//+
MeshSize {12} = 0.089540;
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
Save "../msh/cad_479.msh2";
//+
Save "../mesh/cad_479.mesh";
//+
Save "../geo_unrolled/cad_479.geo_unrolled";
