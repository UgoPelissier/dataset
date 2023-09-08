//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.355656, -4.339286, 0.000000, 33.315173, 8.955389, 0.000000};
//+
l = [0.9745337914640969, 0.9745337914640969, 3.3967255851434697, 1.095033927356977, 3.3967255851434697, 0.8845369540810175, 0.711795276190462, 0.711795276190462];
//+
MeshSize {1} = 0.974534;
//+
MeshSize {2} = 0.974534;
//+
MeshSize {3} = 3.396726;
//+
MeshSize {4} = 1.095034;
//+
Disk(2) = {7.845106, 2.785791, 0.000000, 0.591905, 0.591905};
//+
c0 = 0.059190512128537265;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.363556, 2.623071, 0.000000, 0.672902, 0.672902};
//+
c1 = 0.06729024908563226;
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
