//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.000406, -4.188067, 0.000000, 34.298476, 8.949962, 1.000000};
//+
l = [3.4589575407686897, 3.4589575407686897, 1.1518780948576552, 1.1518780948576552, 1.1518780948576552, 1.1942707189311466, 1.1942707189311466, 1.1942707189311466, 3.4589575407686897, 3.4589575407686897];
//+
MeshSize {1} = 3.458958;
//+
MeshSize {2} = 3.458958;
//+
MeshSize {3} = 1.151878;
//+
MeshSize {4} = 1.151878;
//+
MeshSize {5} = 1.151878;
//+
MeshSize {6} = 1.194271;
//+
MeshSize {7} = 1.194271;
//+
MeshSize {8} = 1.194271;
//+
Cylinder(2) = {22.455671, -0.313354, 0.000000, 0.000000, 0.000000, 1.000000, 0.942160, 2*Pi};
//+
c0 = 0.09421597993048075;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
