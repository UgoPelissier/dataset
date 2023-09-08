//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.321211, -4.053051, 0.000000, 36.287981, 8.266240, 0.000000};
//+
l = [3.6841764806420167, 1.375965322327591, 1.4136876070969457, 3.6841764806420167];
//+
MeshSize {1} = 3.684176;
//+
MeshSize {2} = 1.375965;
//+
MeshSize {3} = 1.413688;
//+
MeshSize {4} = 3.684176;
//+
Disk(2) = {22.061491, -0.610742, 0.000000, 1.189765, 1.189765};
//+
c0 = 0.11897648084454865;
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
