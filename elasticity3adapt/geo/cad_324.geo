//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.712019, -3.990348, 0.000000, 37.809275, 8.728614, 1.000000};
//+
MeshSize {1} = 0.304673;
//+
MeshSize {2} = 0.304673;
//+
MeshSize {3} = 0.588645;
//+
MeshSize {4} = 0.588645;
//+
MeshSize {5} = 3.921956;
//+
MeshSize {6} = 3.921956;
//+
MeshSize {7} = 3.579278;
//+
MeshSize {8} = 3.579278;
//+
Cylinder(2) = {5.297168, -2.677417, 0.000000, 0.000000, 0.000000, 0.100000, 0.532230, 2*Pi};
//+
MeshSize {9} = 0.053223;
//+
MeshSize {10} = 0.053223;
//+
Cylinder(3) = {15.910990, 2.115525, 0.000000, 0.000000, 0.000000, 0.100000, 1.488243, 2*Pi};
//+
MeshSize {11} = 0.148824;
//+
MeshSize {12} = 0.148824;
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
Save "../msh/cad_324.msh2";
//+
Save "../mesh/cad_324.mesh";
//+
Save "../geo_unrolled/cad_324.geo_unrolled";
