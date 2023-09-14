//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.458643, -2.901777, 0.000000, 34.976369, 7.514376, 1.000000};
//+
MeshSize {1} = 1.596929;
//+
MeshSize {2} = 1.596929;
//+
MeshSize {3} = 1.665028;
//+
MeshSize {4} = 1.665028;
//+
MeshSize {5} = 1.255476;
//+
MeshSize {6} = 1.255476;
//+
MeshSize {7} = 1.278189;
//+
MeshSize {8} = 1.278189;
//+
Cylinder(2) = {16.856860, -0.675156, 0.000000, 0.000000, 0.000000, 1.000000, 0.579405, 2*Pi};
//+
MeshSize {9} = 0.057940;
//+
MeshSize {10} = 0.057940;
//+
Cylinder(3) = {21.961417, 0.432442, 0.000000, 0.000000, 0.000000, 1.000000, 1.325253, 2*Pi};
//+
MeshSize {11} = 0.132525;
//+
MeshSize {12} = 0.132525;
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
Save "../geo_unrolled/cad_332.geo_unrolled";
