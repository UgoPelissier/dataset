//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.641704, -4.136347, 0.000000, 29.571870, 9.466986, 1.000000};
//+
l = [0.6091785650551019, 0.6091785650551019, 0.6091785650551019, 3.0582119697037715, 3.0582119697037715, 3.0582119697037715, 3.0582119697037715, 0.24556152944151402, 0.24556152944151402, 0.24556152944151402];
//+
MeshSize {1} = 0.609179;
//+
MeshSize {2} = 0.609179;
//+
MeshSize {3} = 0.609179;
//+
MeshSize {4} = 3.058212;
//+
MeshSize {5} = 3.058212;
//+
MeshSize {6} = 3.058212;
//+
MeshSize {7} = 3.058212;
//+
MeshSize {8} = 0.245562;
//+
Cylinder(2) = {2.072958, 2.510241, 0.000000, 0.000000, 0.000000, 1.000000, 0.707157, 2*Pi};
//+
c0 = 0.07071573703466585;
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
