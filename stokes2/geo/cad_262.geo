//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.677139, -3.890537, 0.000000, 39.161865, 8.109782, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {38.184197, -2.174593, 0.000000, 0.905047, 0.905047};
//+
c0 = 0.0905047436280253;
//+
MeshSize {5} = c0;
//+
Disk(3) = {7.348375, 1.139253, 0.000000, 0.932134, 0.932134};
//+
c1 = 0.09321344524292825;
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
