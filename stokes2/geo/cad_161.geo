//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.905147, -3.797481, 0.000000, 29.259207, 8.788439, 0.000000};
//+
l = [3.048273921169736, 1.0801122608966822, 1.2789962958492118, 3.048273921169736];
//+
MeshSize {1} = 3.048274;
//+
MeshSize {2} = 1.080112;
//+
MeshSize {3} = 1.278996;
//+
MeshSize {4} = 3.048274;
//+
Disk(2) = {18.545334, -2.280035, 0.000000, 0.916568, 0.916568};
//+
c0 = 0.09165675952085399;
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
