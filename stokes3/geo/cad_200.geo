//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.173182, -3.280735, 0.000000, 33.250088, 8.385717, 1.000000};
//+
l = [3.3685234950806375, 3.3685234950806375, 0.8045191650291917, 0.8045191650291917, 0.8045191650291917, 0.7142536238643578, 0.7142536238643578, 0.7142536238643578, 3.3685234950806375, 3.3685234950806375];
//+
MeshSize {1} = 3.368523;
//+
MeshSize {2} = 3.368523;
//+
MeshSize {3} = 0.804519;
//+
MeshSize {4} = 0.804519;
//+
MeshSize {5} = 0.804519;
//+
MeshSize {6} = 0.714254;
//+
MeshSize {7} = 0.714254;
//+
MeshSize {8} = 0.714254;
//+
Cylinder(2) = {25.802423, 1.852611, 0.000000, 0.000000, 0.000000, 1.000000, 1.143309, 2*Pi};
//+
c0 = 0.11433090999994616;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
