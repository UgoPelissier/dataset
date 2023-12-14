//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.990233, -4.583977, 0.000000, 35.850183, 9.619668, 1.000000};
//+
MeshSize {1} = 0.285067;
//+
MeshSize {2} = 0.285067;
//+
MeshSize {3} = 0.506508;
//+
MeshSize {4} = 0.506508;
//+
MeshSize {5} = 3.978803;
//+
MeshSize {6} = 3.978803;
//+
MeshSize {7} = 4.281778;
//+
MeshSize {8} = 4.281778;
//+
Cylinder(2) = {3.444598, -1.161440, 0.000000, 0.000000, 0.000000, 0.100000, 1.052701, 2*Pi};
//+
MeshSize {9} = 0.105270;
//+
MeshSize {10} = 0.105270;
//+
Cylinder(3) = {18.414991, -0.635767, 0.000000, 0.000000, 0.000000, 0.100000, 1.284376, 2*Pi};
//+
MeshSize {11} = 0.128438;
//+
MeshSize {12} = 0.128438;
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
Save "../msh/cad_141.msh2";
//+
Save "../mesh/cad_141.mesh";
//+
Save "../geo_unrolled/cad_141.geo_unrolled";
