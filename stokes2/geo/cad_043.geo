//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.000406, -4.188067, 0.000000, 34.298476, 8.949962, 0.000000};
//+
l = [3.4589575407686897, 1.1518780948576552, 1.1942707189311466, 3.4589575407686897];
//+
MeshSize {1} = 3.458958;
//+
MeshSize {2} = 1.151878;
//+
MeshSize {3} = 1.194271;
//+
MeshSize {4} = 3.458958;
//+
Disk(2) = {22.455671, -0.313354, 0.000000, 0.942160, 0.942160};
//+
c0 = 0.09421597993048075;
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
