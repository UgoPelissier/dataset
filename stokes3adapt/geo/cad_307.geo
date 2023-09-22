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
Cylinder(2) = {8.891026, 0.517275, 0.000000, 0.000000, 0.000000, 1.000000, 1.056323, 2*Pi};
//+
MeshSize {9} = 0.105632;
//+
MeshSize {10} = 0.105632;
//+
Cylinder(3) = {29.832172, -3.328308, 0.000000, 0.000000, 0.000000, 1.000000, 0.537736, 2*Pi};
//+
MeshSize {11} = 0.053774;
//+
MeshSize {12} = 0.053774;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_307.geo_unrolled";
