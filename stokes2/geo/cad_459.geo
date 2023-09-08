//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.102932, -3.339784, 0.000000, 37.864646, 8.314674, 0.000000};
//+
l = [3.8194507605458963, 1.4219628100316462, 1.3474136608848468, 1.3474136608848468, 1.2517578158453393, 1.2517578158453393, 3.8194507605458963, 1.5031356710899246];
//+
MeshSize {1} = 3.819451;
//+
MeshSize {2} = 1.421963;
//+
MeshSize {3} = 1.347414;
//+
MeshSize {4} = 1.347414;
//+
Disk(2) = {24.658097, 2.431468, 0.000000, 1.032746, 1.032746};
//+
c0 = 0.10327455659283313;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.218031, -0.719702, 0.000000, 1.120875, 1.120875};
//+
c1 = 0.11208748388565411;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
