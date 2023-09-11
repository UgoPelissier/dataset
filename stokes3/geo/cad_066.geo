//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.378989, -3.948600, 0.000000, 38.130539, 7.954600, 1.000000};
//+
l = [0.9189236755043485, 0.9189236755043485, 0.9189236755043485, 3.8714373152874124, 3.8714373152874124, 3.8714373152874124, 3.8714373152874124, 0.7119429084485578, 0.7119429084485578, 0.7119429084485578];
//+
MeshSize {1} = 0.918924;
//+
MeshSize {2} = 0.918924;
//+
MeshSize {3} = 0.918924;
//+
MeshSize {4} = 3.871437;
//+
MeshSize {5} = 3.871437;
//+
MeshSize {6} = 3.871437;
//+
MeshSize {7} = 3.871437;
//+
MeshSize {8} = 0.711943;
//+
Cylinder(2) = {8.168635, 2.369137, 0.000000, 0.000000, 0.000000, 1.000000, 0.840339, 2*Pi};
//+
c0 = 0.08403388431642837;
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
