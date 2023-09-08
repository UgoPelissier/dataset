//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.030861, -3.332510, 0.000000, 32.890038, 8.187132, 0.000000};
//+
l = [3.3174431134061404, 3.3174431134061404, 0.9060049959118189, 0.49123118080686334, 0.7839627025918325, 0.69950981634226, 3.3174431134061404, 3.3174431134061404];
//+
MeshSize {1} = 3.317443;
//+
MeshSize {2} = 3.317443;
//+
MeshSize {3} = 0.906005;
//+
MeshSize {4} = 0.491231;
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
