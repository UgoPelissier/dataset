//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.746559, -4.614901, 0.000000, 30.405138, 9.907233, 1.000000};
//+
MeshSize {1} = 3.513905;
//+
MeshSize {2} = 3.513905;
//+
MeshSize {3} = 3.183697;
//+
MeshSize {4} = 3.183697;
//+
MeshSize {5} = 0.425699;
//+
MeshSize {6} = 0.425699;
//+
MeshSize {7} = 0.582893;
//+
MeshSize {8} = 0.582893;
//+
Cylinder(2) = {25.064271, -1.329798, 0.000000, 0.000000, 0.000000, 0.100000, 1.290682, 2*Pi};
//+
MeshSize {9} = 0.129068;
//+
MeshSize {10} = 0.129068;
//+
Cylinder(3) = {20.959746, 1.707420, 0.000000, 0.000000, 0.000000, 0.100000, 1.084560, 2*Pi};
//+
MeshSize {11} = 0.108456;
//+
MeshSize {12} = 0.108456;
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
Save "../msh/cad_061.msh2";
//+
Save "../mesh/cad_061.mesh";
//+
Save "../geo_unrolled/cad_061.geo_unrolled";
