//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.013919, -4.054463, 0.000000, 34.533942, 9.182071, 1.000000};
//+
l = [3.4851574663087117, 3.4851574663087117, 1.0985234037160558, 1.0985234037160558, 1.0985234037160558, 1.0804963974606867, 1.0804963974606867, 1.0804963974606867, 3.4851574663087117, 3.4851574663087117];
//+
MeshSize {1} = 3.485157;
//+
MeshSize {2} = 3.485157;
//+
MeshSize {3} = 1.098523;
//+
MeshSize {4} = 1.098523;
//+
MeshSize {5} = 1.098523;
//+
MeshSize {6} = 1.080496;
//+
MeshSize {7} = 1.080496;
//+
MeshSize {8} = 1.080496;
//+
Cylinder(2) = {23.227936, 0.776437, 0.000000, 0.000000, 0.000000, 1.000000, 1.322417, 2*Pi};
//+
c0 = 0.13224173012267745;
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
