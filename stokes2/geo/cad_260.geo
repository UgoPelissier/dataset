//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.588590, -3.280238, 0.000000, 32.861084, 7.561407, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {3.497142, -0.635344, 0.000000, 1.461728, 1.461728};
//+
c0 = 0.14617278656799704;
//+
MeshSize {5} = c0;
//+
Disk(3) = {10.432630, -0.337748, 0.000000, 0.706867, 0.706867};
//+
c1 = 0.07068673262083146;
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
