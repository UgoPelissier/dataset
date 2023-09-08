//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.178879, -3.412100, 0.000000, 36.947465, 8.004830, 0.000000};
//+
l = [3.734146138316465, 1.2891264561890472, 0.5515937964642253, 0.5515937964642253, 0.2881093790243616, 0.2881093790243616, 3.734146138316465, 1.3121581961094706];
//+
MeshSize {1} = 3.734146;
//+
MeshSize {2} = 1.289126;
//+
MeshSize {3} = 0.551594;
//+
MeshSize {4} = 0.551594;
//+
Disk(2) = {33.679626, 2.373322, 0.000000, 1.218375, 1.218375};
//+
c0 = 0.1218374719718563;
//+
MeshSize {5} = c0;
//+
Disk(3) = {13.474761, 0.190653, 0.000000, 0.884087, 0.884087};
//+
c1 = 0.08840873742615718;
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
