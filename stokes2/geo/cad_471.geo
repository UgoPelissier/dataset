//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.051620, -3.540031, 0.000000, 38.037338, 9.060793, 0.000000};
//+
l = [3.8357439907926123, 1.2112416995616986, 0.5228224062730196, 0.5228224062730196, 0.8789342310598584, 0.8789342310598584, 3.8357439907926123, 1.0377060733382033];
//+
MeshSize {1} = 3.835744;
//+
MeshSize {2} = 1.211242;
//+
MeshSize {3} = 0.522822;
//+
MeshSize {4} = 0.522822;
//+
Disk(2) = {32.430662, -2.012866, 0.000000, 0.632539, 0.632539};
//+
c0 = 0.06325387628063393;
//+
MeshSize {5} = c0;
//+
Disk(3) = {10.701928, 3.242481, 0.000000, 0.514203, 0.514203};
//+
c1 = 0.051420301006309066;
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
