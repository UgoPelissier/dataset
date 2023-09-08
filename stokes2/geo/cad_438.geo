//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.791067, -3.711682, 0.000000, 38.706472, 8.446697, 0.000000};
//+
l = [1.4033311552394057, 1.4033311552394057, 3.9722691868153235, 1.7242089140722123, 3.9722691868153235, 1.6843049667130696, 1.3042167701665297, 1.3042167701665297];
//+
MeshSize {1} = 1.403331;
//+
MeshSize {2} = 1.403331;
//+
MeshSize {3} = 3.972269;
//+
MeshSize {4} = 1.724209;
//+
Disk(2) = {15.033040, 2.265914, 0.000000, 1.412253, 1.412253};
//+
c0 = 0.14122527788221326;
//+
MeshSize {5} = c0;
//+
Disk(3) = {22.335526, 1.347504, 0.000000, 0.650090, 0.650090};
//+
c1 = 0.06500897345105118;
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
