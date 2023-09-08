//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.364221, -4.092776, 0.000000, 36.278155, 8.325500, 0.000000};
//+
l = [1.0022796077905625, 3.6878073012157007, 3.6878073012157007, 1.12198589870269];
//+
MeshSize {1} = 1.002280;
//+
MeshSize {2} = 3.687807;
//+
MeshSize {3} = 3.687807;
//+
MeshSize {4} = 1.121986;
//+
Disk(2) = {11.004522, -1.587801, 0.000000, 0.908393, 0.908393};
//+
c0 = 0.09083929086192169;
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
