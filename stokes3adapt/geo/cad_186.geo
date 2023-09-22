//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.236772, -4.490030, 0.000000, 32.913317, 9.502042, 1.000000};
//+
MeshSize {1} = 3.391041;
//+
MeshSize {2} = 3.391041;
//+
MeshSize {3} = 3.052653;
//+
MeshSize {4} = 3.052653;
//+
MeshSize {5} = 0.542741;
//+
MeshSize {6} = 0.542741;
//+
MeshSize {7} = 0.504248;
//+
MeshSize {8} = 0.504248;
//+
Cylinder(2) = {23.229116, 2.236333, 0.000000, 0.000000, 0.000000, 1.000000, 0.818058, 2*Pi};
//+
MeshSize {9} = 0.081806;
//+
MeshSize {10} = 0.081806;
//+
Cylinder(3) = {25.854981, 0.804899, 0.000000, 0.000000, 0.000000, 1.000000, 0.655411, 2*Pi};
//+
MeshSize {11} = 0.065541;
//+
MeshSize {12} = 0.065541;
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
Save "../geo_unrolled/cad_186.geo_unrolled";
