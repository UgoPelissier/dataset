//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.325185, -3.322517, 0.000000, 34.980383, 8.634289, 0.000000};
//+
l = [3.5568537964025246, 0.5688565763880173, 0.5294652947840278, 3.5568537964025246];
//+
MeshSize {1} = 3.556854;
//+
MeshSize {2} = 0.568857;
//+
MeshSize {3} = 0.529465;
//+
MeshSize {4} = 3.556854;
//+
Disk(2) = {30.108332, 1.303058, 0.000000, 1.268963, 1.268963};
//+
c0 = 0.12689627301047388;
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
