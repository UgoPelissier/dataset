//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.173182, -3.280735, 0.000000, 33.250088, 8.385717, 0.000000};
//+
l = [3.3685234950806375, 0.8045191650291917, 0.7142536238643578, 3.3685234950806375];
//+
MeshSize {1} = 3.368523;
//+
MeshSize {2} = 0.804519;
//+
MeshSize {3} = 0.714254;
//+
MeshSize {4} = 3.368523;
//+
Disk(2) = {25.802423, 1.852611, 0.000000, 1.143309, 1.143309};
//+
c0 = 0.11433090999994616;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
