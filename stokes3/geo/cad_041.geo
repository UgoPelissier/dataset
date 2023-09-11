//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.364221, -4.092776, 0.000000, 36.278155, 8.325500, 1.000000};
//+
l = [1.0022796077905625, 1.0022796077905625, 1.0022796077905625, 3.6878073012157007, 3.6878073012157007, 3.6878073012157007, 3.6878073012157007, 1.12198589870269, 1.12198589870269, 1.12198589870269];
//+
MeshSize {1} = 1.002280;
//+
MeshSize {2} = 1.002280;
//+
MeshSize {3} = 1.002280;
//+
MeshSize {4} = 3.687807;
//+
MeshSize {5} = 3.687807;
//+
MeshSize {6} = 3.687807;
//+
MeshSize {7} = 3.687807;
//+
MeshSize {8} = 1.121986;
//+
Cylinder(2) = {11.004522, -1.587801, 0.000000, 0.000000, 0.000000, 1.000000, 0.908393, 2*Pi};
//+
c0 = 0.09083929086192169;
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
