//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.461150, -3.507769, 0.000000, 32.092117, 7.523494, 1.000000};
//+
l = [0.47524020888179824, 0.47524020888179824, 0.47524020888179824, 3.2769893753144523, 3.2769893753144523, 3.2769893753144523, 3.2769893753144523, 0.5616273837296756, 0.5616273837296756, 0.5616273837296756];
//+
MeshSize {1} = 0.475240;
//+
MeshSize {2} = 0.475240;
//+
MeshSize {3} = 0.475240;
//+
MeshSize {4} = 3.276989;
//+
MeshSize {5} = 3.276989;
//+
MeshSize {6} = 3.276989;
//+
MeshSize {7} = 3.276989;
//+
MeshSize {8} = 0.561627;
//+
Cylinder(2) = {5.142623, -0.438396, 0.000000, 0.000000, 0.000000, 1.000000, 0.845566, 2*Pi};
//+
c0 = 0.08455656244430818;
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
