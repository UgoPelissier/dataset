//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.630617, -4.181728, 0.000000, 30.218008, 9.081978, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {22.202959, 0.844128, 0.000000, 0.989233, 0.989233};
//+
c0 = 0.09892325504777397;
//+
MeshSize {5} = c0;
//+
Disk(3) = {1.943236, 0.368293, 0.000000, 0.807731, 0.807731};
//+
c1 = 0.08077308796322655;
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
