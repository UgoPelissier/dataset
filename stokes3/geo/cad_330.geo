//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.948084, -3.117317, 0.000000, 33.085832, 8.071046, 1.000000};
//+
l = [0.7920276891913262, 0.7920276891913262, 0.7920276891913262, 0.7920276891913262, 0.7920276891913262, 0.7920276891913262, 3.4272334517912073, 3.4272334517912073, 3.4272334517912073, 3.4272334517912073, 3.4272334517912073, 3.4272334517912073, 3.4272334517912073, 3.4272334517912073, 0.8507803889318567, 0.8507803889318567, 0.8507803889318567, 0.8507803889318567, 0.8507803889318567, 0.8507803889318567];
//+
MeshSize {1} = 0.792028;
//+
MeshSize {2} = 0.792028;
//+
MeshSize {3} = 0.792028;
//+
MeshSize {4} = 0.792028;
//+
MeshSize {5} = 0.792028;
//+
MeshSize {6} = 0.792028;
//+
MeshSize {7} = 3.427233;
//+
MeshSize {8} = 3.427233;
//+
Cylinder(2) = {8.705507, 0.280335, 0.000000, 0.000000, 0.000000, 1.000000, 0.548587, 2*Pi};
//+
c0 = 0.05485869615817373;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {12.941525, 0.381618, 0.000000, 0.000000, 0.000000, 1.000000, 0.974396, 2*Pi};
//+
c1 = 0.09743963383277372;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
