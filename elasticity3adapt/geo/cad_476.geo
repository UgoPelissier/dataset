//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.746496, -3.995708, 0.000000, 32.946824, 9.879554, 1.000000};
//+
MeshSize {1} = 1.362633;
//+
MeshSize {2} = 1.362633;
//+
MeshSize {3} = 1.094335;
//+
MeshSize {4} = 1.094335;
//+
MeshSize {5} = 0.887695;
//+
MeshSize {6} = 0.887695;
//+
MeshSize {7} = 0.973154;
//+
MeshSize {8} = 0.973154;
//+
Cylinder(2) = {20.269909, -0.902795, 0.000000, 0.000000, 0.000000, 0.100000, 0.620866, 2*Pi};
//+
MeshSize {9} = 0.062087;
//+
MeshSize {10} = 0.062087;
//+
Cylinder(3) = {16.372445, 2.876963, 0.000000, 0.000000, 0.000000, 0.100000, 0.642140, 2*Pi};
//+
MeshSize {11} = 0.064214;
//+
MeshSize {12} = 0.064214;
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
Save "../msh/cad_476.msh2";
//+
Save "../mesh/cad_476.mesh";
//+
Save "../geo_unrolled/cad_476.geo_unrolled";
