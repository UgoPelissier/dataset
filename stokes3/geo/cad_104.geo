//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.090133, -3.674440, 0.000000, 37.384675, 7.939100, 1.000000};
//+
l = [0.48168147318792554, 0.48168147318792554, 0.48168147318792554, 3.7684461137311027, 3.7684461137311027, 3.7684461137311027, 3.7684461137311027, 0.47943628084930534, 0.47943628084930534, 0.47943628084930534];
//+
MeshSize {1} = 0.481681;
//+
MeshSize {2} = 0.481681;
//+
MeshSize {3} = 0.481681;
//+
MeshSize {4} = 3.768446;
//+
MeshSize {5} = 3.768446;
//+
MeshSize {6} = 3.768446;
//+
MeshSize {7} = 3.768446;
//+
MeshSize {8} = 0.479436;
//+
Cylinder(2) = {4.952663, 0.312862, 0.000000, 0.000000, 0.000000, 1.000000, 1.471490, 2*Pi};
//+
c0 = 0.14714895812113402;
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
