//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.958484, -3.539712, 0.000000, 37.164019, 7.805134, 0.100000};
//+
MeshSize {1} = 5.923454;
//+
MeshSize {2} = 5.923454;
//+
MeshSize {3} = 5.602888;
//+
MeshSize {4} = 5.602888;
//+
MeshSize {5} = 0.164721;
//+
MeshSize {6} = 0.164721;
//+
MeshSize {7} = 0.249805;
//+
MeshSize {8} = 0.249805;
//+
Cylinder(2) = {33.050416, 2.791484, 0.000000, 0.000000, 0.000000, 0.100000, 0.888471, 2*Pi};
//+
MeshSize {9} = 0.088847;
//+
MeshSize {10} = 0.088847;
//+
Cylinder(3) = {34.683438, -0.835340, 0.000000, 0.000000, 0.000000, 0.100000, 1.477993, 2*Pi};
//+
MeshSize {11} = 0.147799;
//+
MeshSize {12} = 0.147799;
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
Save "../msh/cad_435.msh2";
//+
Save "../mesh/cad_435.mesh";
//+
Save "../geo_unrolled/cad_435.geo_unrolled";
