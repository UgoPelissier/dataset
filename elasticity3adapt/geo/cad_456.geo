//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.670260, -4.334589, 0.000000, 31.980484, 9.916799, 1.000000};
//+
MeshSize {1} = 4.072542;
//+
MeshSize {2} = 4.072542;
//+
MeshSize {3} = 3.984298;
//+
MeshSize {4} = 3.984298;
//+
MeshSize {5} = 0.256965;
//+
MeshSize {6} = 0.256965;
//+
MeshSize {7} = 0.560774;
//+
MeshSize {8} = 0.560774;
//+
Cylinder(2) = {28.450057, -3.102057, 0.000000, 0.000000, 0.000000, 0.100000, 0.685087, 2*Pi};
//+
MeshSize {9} = 0.068509;
//+
MeshSize {10} = 0.068509;
//+
Cylinder(3) = {24.391063, 1.031871, 0.000000, 0.000000, 0.000000, 0.100000, 1.371616, 2*Pi};
//+
MeshSize {11} = 0.137162;
//+
MeshSize {12} = 0.137162;
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
Save "../msh/cad_456.msh2";
//+
Save "../mesh/cad_456.mesh";
//+
Save "../geo_unrolled/cad_456.geo_unrolled";
