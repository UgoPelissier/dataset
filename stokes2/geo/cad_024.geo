//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.485641, -3.609547, 0.000000, 33.524762, 7.646588, 0.000000};
//+
l = [3.422462689462522, 0.7114134805556409, 0.7628359739453591, 3.422462689462522];
//+
MeshSize {1} = 3.422463;
//+
MeshSize {2} = 0.711413;
//+
MeshSize {3} = 0.762836;
//+
MeshSize {4} = 3.422463;
//+
Disk(2) = {26.666557, -0.344033, 0.000000, 0.923007, 0.923007};
//+
c0 = 0.0923007485990163;
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
