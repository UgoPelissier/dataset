//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.408867, -4.203945, 0.000000, 37.249410, 9.945833, 1.000000};
//+
l = [3.798520387360361, 3.798520387360361, 1.2272206221359703, 1.2272206221359703, 1.2272206221359703, 1.3357349468134825, 1.3357349468134825, 1.3357349468134825, 3.798520387360361, 3.798520387360361];
//+
MeshSize {1} = 3.798520;
//+
MeshSize {2} = 3.798520;
//+
MeshSize {3} = 1.227221;
//+
MeshSize {4} = 1.227221;
//+
MeshSize {5} = 1.227221;
//+
MeshSize {6} = 1.335735;
//+
MeshSize {7} = 1.335735;
//+
MeshSize {8} = 1.335735;
//+
Cylinder(2) = {24.322759, -0.792067, 0.000000, 0.000000, 0.000000, 1.000000, 1.492857, 2*Pi};
//+
c0 = 0.1492856598580879;
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
