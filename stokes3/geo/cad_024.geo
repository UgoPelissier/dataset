//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.485641, -3.609547, 0.000000, 33.524762, 7.646588, 1.000000};
//+
l = [3.422462689462522, 3.422462689462522, 0.7114134805556409, 0.7114134805556409, 0.7114134805556409, 0.7628359739453591, 0.7628359739453591, 0.7628359739453591, 3.422462689462522, 3.422462689462522];
//+
MeshSize {1} = 3.422463;
//+
MeshSize {2} = 3.422463;
//+
MeshSize {3} = 0.711413;
//+
MeshSize {4} = 0.711413;
//+
MeshSize {5} = 0.711413;
//+
MeshSize {6} = 0.762836;
//+
MeshSize {7} = 0.762836;
//+
MeshSize {8} = 0.762836;
//+
Cylinder(2) = {26.666557, -0.344033, 0.000000, 0.000000, 0.000000, 1.000000, 0.923007, 2*Pi};
//+
c0 = 0.0923007485990163;
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
