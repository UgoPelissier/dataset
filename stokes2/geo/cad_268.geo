//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.030861, -3.332510, 0.000000, 32.890038, 8.187132, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {24.444368, 2.177119, 0.000000, 1.049726, 1.049726};
//+
c0 = 0.10497261845380512;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.103210, -1.090020, 0.000000, 1.322611, 1.322611};
//+
c1 = 0.13226109277962614;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
