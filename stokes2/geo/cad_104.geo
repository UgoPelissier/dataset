//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.090133, -3.674440, 0.000000, 37.384675, 7.939100, 0.000000};
//+
l = [0.48168147318792554, 3.7684461137311027, 3.7684461137311027, 0.47943628084930534];
//+
MeshSize {1} = 0.481681;
//+
MeshSize {2} = 3.768446;
//+
MeshSize {3} = 3.768446;
//+
MeshSize {4} = 0.479436;
//+
Disk(2) = {4.952663, 0.312862, 0.000000, 1.471490, 1.471490};
//+
c0 = 0.14714895812113402;
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
