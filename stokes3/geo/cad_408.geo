//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.000720, -3.343892, 0.000000, 33.789716, 7.963836, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {8.068702, 1.760036, 0.000000, 0.000000, 0.000000, 1.000000, 1.158289, 2*Pi};
//+
c0 = 0.115828941737982;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {18.211576, -0.896004, 0.000000, 0.000000, 0.000000, 1.000000, 1.024070, 2*Pi};
//+
c1 = 0.10240697688104523;
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
