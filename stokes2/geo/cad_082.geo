//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.491726, -4.075393, 0.000000, 32.987885, 8.333271, 0.000000};
//+
l = [3.3737889305207456, 0.9067549198464452, 1.0448174789548332, 3.3737889305207456];
//+
MeshSize {1} = 3.373789;
//+
MeshSize {2} = 0.906755;
//+
MeshSize {3} = 1.044817;
//+
MeshSize {4} = 3.373789;
//+
Disk(2) = {23.223924, -1.764839, 0.000000, 1.445194, 1.445194};
//+
c0 = 0.14451935395632107;
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
