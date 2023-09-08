//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.784307, -3.781795, 0.000000, 32.092079, 9.161234, 0.000000};
//+
l = [3.3193957944210553, 3.3193957944210553, 0.22056864062947815, 0.22056864062947815, 0.5393418316011916, 0.5393418316011916, 3.3193957944210553, 3.3193957944210553];
//+
MeshSize {1} = 3.319396;
//+
MeshSize {2} = 3.319396;
//+
MeshSize {3} = 0.220569;
//+
MeshSize {4} = 0.220569;
//+
Disk(2) = {30.459473, -1.030138, 0.000000, 1.456702, 1.456702};
//+
c0 = 0.14567019700118267;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.673989, 3.390738, 0.000000, 1.329983, 1.329983};
//+
c1 = 0.13299834819551445;
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
