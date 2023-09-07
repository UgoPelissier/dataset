//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.330563, -3.232440, 0.000000, 31.217494, 7.884258, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {19.421258, 1.276384, 0.000000, 0.000000, 0.000000, 1.000000, 0.990551, 2*Pi};
//+
c0 = 0.09905509411536767;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {2.150835, 0.040528, 0.000000, 0.000000, 0.000000, 1.000000, 0.915931, 2*Pi};
//+
c1 = 0.09159312437704217;
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
