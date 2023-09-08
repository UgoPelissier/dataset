//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.641704, -4.136347, 0.000000, 29.571870, 9.466986, 0.000000};
//+
l = [0.6091785650551019, 3.0582119697037715, 3.0582119697037715, 0.24556152944151402];
//+
MeshSize {1} = 0.609179;
//+
MeshSize {2} = 3.058212;
//+
MeshSize {3} = 3.058212;
//+
MeshSize {4} = 0.245562;
//+
Disk(2) = {2.072958, 2.510241, 0.000000, 0.707157, 0.707157};
//+
c0 = 0.07071573703466585;
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
