//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.861248, -3.762098, 0.000000, 31.491164, 9.255555, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {12.755531, -1.683333, 0.000000, 0.882790, 0.882790};
//+
c0 = 0.08827896148415854;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.909224, 3.146543, 0.000000, 0.654267, 0.654267};
//+
c1 = 0.06542672908937251;
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
