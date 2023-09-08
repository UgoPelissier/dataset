//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.948084, -3.117317, 0.000000, 33.085832, 8.071046, 0.000000};
//+
l = [0.7920276891913262, 0.7920276891913262, 3.4272334517912073, 3.4272334517912073, 3.4272334517912073, 3.4272334517912073, 0.8507803889318567, 0.8507803889318567];
//+
MeshSize {1} = 0.792028;
//+
MeshSize {2} = 0.792028;
//+
MeshSize {3} = 3.427233;
//+
MeshSize {4} = 3.427233;
//+
Disk(2) = {8.705507, 0.280335, 0.000000, 0.548587, 0.548587};
//+
c0 = 0.05485869615817373;
//+
MeshSize {5} = c0;
//+
Disk(3) = {12.941525, 0.381618, 0.000000, 0.974396, 0.974396};
//+
c1 = 0.09743963383277372;
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
