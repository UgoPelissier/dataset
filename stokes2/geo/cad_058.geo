//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.949612, -3.741117, 0.000000, 29.254188, 7.880956, 0.000000};
//+
l = [0.4764178258522243, 3.045975888343827, 3.045975888343827, 0.2943475521330323];
//+
MeshSize {1} = 0.476418;
//+
MeshSize {2} = 3.045976;
//+
MeshSize {3} = 3.045976;
//+
MeshSize {4} = 0.294348;
//+
Disk(2) = {3.812353, 1.335498, 0.000000, 1.063970, 1.063970};
//+
c0 = 0.1063969581930019;
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
