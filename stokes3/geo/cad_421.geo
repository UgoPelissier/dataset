//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.134871, -4.006014, 0.000000, 34.743740, 9.130621, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {6.839671, 1.059123, 0.000000, 0.000000, 0.000000, 1.000000, 1.235668, 2*Pi};
//+
c0 = 0.12356677541453226;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {11.280149, 3.872644, 0.000000, 0.000000, 0.000000, 1.000000, 0.589595, 2*Pi};
//+
c1 = 0.05895946481267353;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
