//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.102932, -3.339784, 0.000000, 37.864646, 8.314674, 1.000000};
//+
MeshSize {1} = 1.091491;
//+
MeshSize {2} = 1.091491;
//+
MeshSize {3} = 1.289288;
//+
MeshSize {4} = 1.289288;
//+
MeshSize {5} = 0.975632;
//+
MeshSize {6} = 0.975632;
//+
MeshSize {7} = 0.906370;
//+
MeshSize {8} = 0.906370;
//+
Cylinder(2) = {24.658097, 2.431468, 0.000000, 0.000000, 0.000000, 1.000000, 1.032746, 2*Pi};
//+
MeshSize {9} = 0.103275;
//+
MeshSize {10} = 0.103275;
//+
Cylinder(3) = {15.218031, -0.719702, 0.000000, 0.000000, 0.000000, 1.000000, 1.120875, 2*Pi};
//+
MeshSize {11} = 0.112087;
//+
MeshSize {12} = 0.112087;
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
Save "../geo_unrolled/cad_351.geo_unrolled";
