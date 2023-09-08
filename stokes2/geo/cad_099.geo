//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.461150, -3.507769, 0.000000, 32.092117, 7.523494, 0.000000};
//+
l = [0.47524020888179824, 3.2769893753144523, 3.2769893753144523, 0.5616273837296756];
//+
MeshSize {1} = 0.475240;
//+
MeshSize {2} = 3.276989;
//+
MeshSize {3} = 3.276989;
//+
MeshSize {4} = 0.561627;
//+
Disk(2) = {5.142623, -0.438396, 0.000000, 0.845566, 0.845566};
//+
c0 = 0.08455656244430818;
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
