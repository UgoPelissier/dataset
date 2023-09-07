//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.682942, -3.950233, 0.000000, 38.861588, 9.425918, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {20.033678, 1.211897, 0.000000, 1.001049, 1.001049};
//+
c0 = 0.10010489655070752;
//+
MeshSize {5} = c0;
//+
Disk(3) = {16.428063, 1.902250, 0.000000, 0.582428, 0.582428};
//+
c1 = 0.05824278119246459;
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
