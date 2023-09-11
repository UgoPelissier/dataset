//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.757777, -4.915898, 0.000000, 38.513255, 9.964069, 1.000000};
//+
MeshSize {1} = 3.958579;
//+
MeshSize {2} = 3.958579;
//+
MeshSize {3} = 0.627568;
//+
MeshSize {4} = 0.627568;
//+
MeshSize {5} = 1.647116;
//+
MeshSize {6} = 1.647116;
//+
MeshSize {7} = 0.627568;
//+
MeshSize {8} = 0.627568;
//+
Cylinder(2) = {34.053051, -0.100210, 0.000000, 0.000000, 0.000000, 1.000000, 0.824896, 2*Pi};
//+
MeshSize {9} = 0.082490;
//+
MeshSize {10} = 0.082490;
//+
Cylinder(3) = {17.968262, -2.523063, 0.000000, 0.000000, 0.000000, 1.000000, 0.904867, 2*Pi};
//+
MeshSize {11} = 0.090487;
//+
MeshSize {12} = 0.090487;
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
