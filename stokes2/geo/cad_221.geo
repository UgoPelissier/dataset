//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.408867, -4.203945, 0.000000, 37.249410, 9.945833, 0.000000};
//+
l = [3.798520387360361, 1.2272206221359703, 1.3357349468134825, 3.798520387360361];
//+
MeshSize {1} = 3.798520;
//+
MeshSize {2} = 1.227221;
//+
MeshSize {3} = 1.335735;
//+
MeshSize {4} = 3.798520;
//+
Disk(2) = {24.322759, -0.792067, 0.000000, 1.492857, 1.492857};
//+
c0 = 0.1492856598580879;
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
