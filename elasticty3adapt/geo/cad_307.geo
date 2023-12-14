//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.301842, -4.519317, 0.000000, 31.917025, 9.639301, 1.000000};
//+
MeshSize {1} = 2.064622;
//+
MeshSize {2} = 2.064622;
//+
MeshSize {3} = 1.920392;
//+
MeshSize {4} = 1.920392;
//+
MeshSize {5} = 0.304669;
//+
MeshSize {6} = 0.304669;
//+
MeshSize {7} = 1.638885;
//+
MeshSize {8} = 1.638885;
//+
Cylinder(2) = {8.891026, 0.517275, 0.000000, 0.000000, 0.000000, 0.100000, 1.056323, 2*Pi};
//+
MeshSize {9} = 0.105632;
//+
MeshSize {10} = 0.105632;
//+
Cylinder(3) = {29.832172, -3.328308, 0.000000, 0.000000, 0.000000, 0.100000, 0.537736, 2*Pi};
//+
MeshSize {11} = 0.053774;
//+
MeshSize {12} = 0.053774;
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
Save "../msh/cad_307.msh2";
//+
Save "../mesh/cad_307.mesh";
//+
Save "../geo_unrolled/cad_307.geo_unrolled";
