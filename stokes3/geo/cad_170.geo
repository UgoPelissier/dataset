//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.321211, -4.053051, 0.000000, 36.287981, 8.266240, 1.000000};
//+
l = [3.6841764806420167, 3.6841764806420167, 1.375965322327591, 1.375965322327591, 1.375965322327591, 1.4136876070969457, 1.4136876070969457, 1.4136876070969457, 3.6841764806420167, 3.6841764806420167];
//+
MeshSize {1} = 3.684176;
//+
MeshSize {2} = 3.684176;
//+
MeshSize {3} = 1.375965;
//+
MeshSize {4} = 1.375965;
//+
MeshSize {5} = 1.375965;
//+
MeshSize {6} = 1.413688;
//+
MeshSize {7} = 1.413688;
//+
MeshSize {8} = 1.413688;
//+
Cylinder(2) = {22.061491, -0.610742, 0.000000, 0.000000, 0.000000, 1.000000, 1.189765, 2*Pi};
//+
c0 = 0.11897648084454865;
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
