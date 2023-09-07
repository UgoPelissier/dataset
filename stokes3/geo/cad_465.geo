//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.861248, -3.762098, 0.000000, 31.491164, 9.255555, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {12.755531, -1.683333, 0.000000, 0.000000, 0.000000, 1.000000, 0.882790, 2*Pi};
//+
c0 = 0.08827896148415854;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {29.909224, 3.146543, 0.000000, 0.000000, 0.000000, 1.000000, 0.654267, 2*Pi};
//+
c1 = 0.06542672908937251;
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
