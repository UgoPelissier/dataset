//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.603253, -4.074256, 0.000000, 31.590964, 8.589590, 0.000000};
//+
l = [0.5681802350228303, 3.2479421638657513, 3.2479421638657513, 0.4402231122973477];
//+
MeshSize {1} = 0.568180;
//+
MeshSize {2} = 3.247942;
//+
MeshSize {3} = 3.247942;
//+
MeshSize {4} = 0.440223;
//+
Disk(2) = {4.108877, 1.050137, 0.000000, 0.526966, 0.526966};
//+
c0 = 0.05269664519051377;
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
