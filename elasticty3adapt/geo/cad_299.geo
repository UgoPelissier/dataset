//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.437500, -3.692505, 0.000000, 36.532878, 7.974440, 1.000000};
//+
MeshSize {1} = 0.355156;
//+
MeshSize {2} = 0.355156;
//+
MeshSize {3} = 0.452731;
//+
MeshSize {4} = 0.452731;
//+
MeshSize {5} = 3.910756;
//+
MeshSize {6} = 3.910756;
//+
MeshSize {7} = 4.224867;
//+
MeshSize {8} = 4.224867;
//+
Cylinder(2) = {6.899661, -1.214789, 0.000000, 0.000000, 0.000000, 0.100000, 1.232402, 2*Pi};
//+
MeshSize {9} = 0.123240;
//+
MeshSize {10} = 0.123240;
//+
Cylinder(3) = {10.931130, -1.887157, 0.000000, 0.000000, 0.000000, 0.100000, 0.867113, 2*Pi};
//+
MeshSize {11} = 0.086711;
//+
MeshSize {12} = 0.086711;
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
Save "../msh/cad_299.msh2";
//+
Save "../mesh/cad_299.mesh";
//+
Save "../geo_unrolled/cad_299.geo_unrolled";
