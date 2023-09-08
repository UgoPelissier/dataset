//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.616519, -3.275061, 0.000000, 34.262024, 7.516531, 0.000000};
//+
l = [3.508044155316959, 0.6660909755265649, 0.5840387501110069, 3.508044155316959];
//+
MeshSize {1} = 3.508044;
//+
MeshSize {2} = 0.666091;
//+
MeshSize {3} = 0.584039;
//+
MeshSize {4} = 3.508044;
//+
Disk(2) = {28.361740, 1.308124, 0.000000, 1.306168, 1.306168};
//+
c0 = 0.13061676989474288;
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
