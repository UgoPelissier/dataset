//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.318485, -3.962528, 0.000000, 36.725052, 8.208169, 0.000000};
//+
l = [1.2090500121553702, 1.2090500121553702, 3.727019105367056, 3.727019105367056, 3.727019105367056, 3.727019105367056, 1.2474513883222522, 1.2474513883222522];
//+
MeshSize {1} = 1.209050;
//+
MeshSize {2} = 1.209050;
//+
MeshSize {3} = 3.727019;
//+
MeshSize {4} = 3.727019;
//+
Disk(2) = {12.548087, -0.462550, 0.000000, 0.630074, 0.630074};
//+
c0 = 0.063007400206471;
//+
MeshSize {5} = c0;
//+
Disk(3) = {17.437711, 1.440500, 0.000000, 0.605927, 0.605927};
//+
c1 = 0.06059269188612673;
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
