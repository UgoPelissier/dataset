//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.055909, -3.811739, 0.000000, 32.138207, 9.616263, 0.000000};
//+
l = [3.2551178523058626, 3.2551178523058626, 0.5616490040369684, 0.5616490040369684, 0.8376652816521223, 0.5945755564982841, 3.2551178523058626, 3.2551178523058626];
//+
MeshSize {1} = 3.255118;
//+
MeshSize {2} = 3.255118;
//+
MeshSize {3} = 0.561649;
//+
MeshSize {4} = 0.561649;
//+
Disk(2) = {25.671288, -1.396237, 0.000000, 1.339222, 1.339222};
//+
c0 = 0.13392222523059094;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.955225, 1.900429, 0.000000, 1.413980, 1.413980};
//+
c1 = 0.14139800041285344;
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
