//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.041611, -4.268239, 0.000000, 35.421922, 9.974439, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {3.632049, 3.292270, 0.000000, 1.251345, 1.251345};
//+
c0 = 0.12513454947436722;
//+
MeshSize {5} = c0;
//+
Disk(3) = {12.361771, 3.159190, 0.000000, 0.939070, 0.939070};
//+
c1 = 0.0939069903383333;
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
