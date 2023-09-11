//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.682942, -3.950233, 0.000000, 38.861588, 9.425918, 1.000000};
//+
MeshSize {1} = 1.902640;
//+
MeshSize {2} = 1.902640;
//+
MeshSize {3} = 1.918114;
//+
MeshSize {4} = 1.918114;
//+
MeshSize {5} = 1.621520;
//+
MeshSize {6} = 1.621520;
//+
MeshSize {7} = 1.918114;
//+
MeshSize {8} = 1.918114;
//+
Cylinder(2) = {20.033678, 1.211897, 0.000000, 0.000000, 0.000000, 1.000000, 1.001049, 2*Pi};
//+
MeshSize {9} = 0.100105;
//+
MeshSize {10} = 0.100105;
//+
Cylinder(3) = {16.428063, 1.902250, 0.000000, 0.000000, 0.000000, 1.000000, 0.582428, 2*Pi};
//+
MeshSize {11} = 0.058243;
//+
MeshSize {12} = 0.058243;
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
Save "../geo_unrolled/cad_281.geo_unrolled";
