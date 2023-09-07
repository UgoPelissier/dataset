//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.840110, -4.713051, 0.000000, 36.489618, 9.694715, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {17.278004, -1.369460, 0.000000, 0.000000, 0.000000, 1.000000, 0.805472, 2*Pi};
//+
c0 = 0.08054717964453353;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {31.423904, 3.477627, 0.000000, 0.000000, 0.000000, 1.000000, 0.640002, 2*Pi};
//+
c1 = 0.06400016687162;
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
