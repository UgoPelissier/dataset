//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.013919, -4.054463, 0.000000, 34.533942, 9.182071, 0.000000};
//+
l = [3.4851574663087117, 1.0985234037160558, 1.0804963974606867, 3.4851574663087117];
//+
MeshSize {1} = 3.485157;
//+
MeshSize {2} = 1.098523;
//+
MeshSize {3} = 1.080496;
//+
MeshSize {4} = 3.485157;
//+
Disk(2) = {23.227936, 0.776437, 0.000000, 1.322417, 1.322417};
//+
c0 = 0.13224173012267745;
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
