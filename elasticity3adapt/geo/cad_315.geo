//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.693795, -3.667157, 0.000000, 33.806820, 7.556870, 1.000000};
//+
MeshSize {1} = 0.606174;
//+
MeshSize {2} = 0.606174;
//+
MeshSize {3} = 0.590717;
//+
MeshSize {4} = 0.590717;
//+
MeshSize {5} = 2.536789;
//+
MeshSize {6} = 2.536789;
//+
MeshSize {7} = 2.981479;
//+
MeshSize {8} = 2.981479;
//+
Cylinder(2) = {7.210958, 0.287202, 0.000000, 0.000000, 0.000000, 0.100000, 0.703801, 2*Pi};
//+
MeshSize {9} = 0.070380;
//+
MeshSize {10} = 0.070380;
//+
Cylinder(3) = {18.052995, -1.823790, 0.000000, 0.000000, 0.000000, 0.100000, 0.983026, 2*Pi};
//+
MeshSize {11} = 0.098303;
//+
MeshSize {12} = 0.098303;
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
Save "../msh/cad_315.msh2";
//+
Save "../mesh/cad_315.mesh";
//+
Save "../geo_unrolled/cad_315.geo_unrolled";
