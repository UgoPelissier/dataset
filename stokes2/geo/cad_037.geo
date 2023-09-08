//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.929881, -3.898859, 0.000000, 38.832179, 9.526929, 0.000000};
//+
l = [4.004637358242003, 0.7966216000310298, 0.5260718374429032, 4.004637358242003];
//+
MeshSize {1} = 4.004637;
//+
MeshSize {2} = 0.796622;
//+
MeshSize {3} = 0.526072;
//+
MeshSize {4} = 4.004637;
//+
Disk(2) = {34.356966, 2.960487, 0.000000, 0.766806, 0.766806};
//+
c0 = 0.0766805709594472;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
