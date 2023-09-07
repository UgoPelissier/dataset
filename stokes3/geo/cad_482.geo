//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.785382, -4.402565, 0.000000, 29.247692, 9.885388, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {24.566353, -0.177281, 0.000000, 0.000000, 0.000000, 1.000000, 1.067244, 2*Pi};
//+
c0 = 0.10672438855119354;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {28.082191, -1.394647, 0.000000, 0.000000, 0.000000, 1.000000, 1.181836, 2*Pi};
//+
c1 = 0.11818357356103366;
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
