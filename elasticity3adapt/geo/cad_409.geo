//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.580047, -3.574399, 0.000000, 29.548930, 8.795427, 0.100000};
//+
MeshSize {1} = 0.929111;
//+
MeshSize {2} = 0.929111;
//+
MeshSize {3} = 0.994330;
//+
MeshSize {4} = 0.994330;
//+
MeshSize {5} = 1.344604;
//+
MeshSize {6} = 1.344604;
//+
MeshSize {7} = 0.972824;
//+
MeshSize {8} = 0.972824;
//+
Cylinder(2) = {11.238536, -0.132820, 0.000000, 0.000000, 0.000000, 0.100000, 0.840313, 2*Pi};
//+
MeshSize {9} = 0.084031;
//+
MeshSize {10} = 0.084031;
//+
Cylinder(3) = {18.481969, 2.914947, 0.000000, 0.000000, 0.000000, 0.100000, 1.025653, 2*Pi};
//+
MeshSize {11} = 0.102565;
//+
MeshSize {12} = 0.102565;
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
Save "../msh/cad_409.msh2";
//+
Save "../mesh/cad_409.mesh";
//+
Save "../geo_unrolled/cad_409.geo_unrolled";
