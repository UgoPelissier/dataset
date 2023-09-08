//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.355283, -3.990903, 0.000000, 32.715569, 9.470226, 0.000000};
//+
l = [0.9946761025467824, 0.9946761025467824, 3.340812168836692, 0.4797144184826316, 3.340812168836692, 0.6207887742264809, 1.2336420894809694, 1.2336420894809694];
//+
MeshSize {1} = 0.994676;
//+
MeshSize {2} = 0.994676;
//+
MeshSize {3} = 3.340812;
//+
MeshSize {4} = 0.479714;
//+
Disk(2) = {10.956940, -2.267558, 0.000000, 0.794051, 0.794051};
//+
c0 = 0.07940511216503428;
//+
MeshSize {5} = c0;
//+
Disk(3) = {28.150369, -0.279025, 0.000000, 1.366393, 1.366393};
//+
c1 = 0.13663933696925398;
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
