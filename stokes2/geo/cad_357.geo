//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.911336, -3.931412, 0.000000, 32.838244, 9.507042, 0.000000};
//+
l = [0.5459329228440638, 0.5459329228440638, 3.408269560627774, 0.9713816570248612, 3.408269560627774, 0.7002197383679702, 0.6351407468758133, 0.6351407468758133];
//+
MeshSize {1} = 0.545933;
//+
MeshSize {2} = 0.545933;
//+
MeshSize {3} = 3.408270;
//+
MeshSize {4} = 0.971382;
//+
Disk(2) = {6.497212, 0.132097, 0.000000, 1.448212, 1.448212};
//+
c0 = 0.1448211819648418;
//+
MeshSize {5} = c0;
//+
Disk(3) = {26.108077, 3.469603, 0.000000, 0.924209, 0.924209};
//+
c1 = 0.09242094519411406;
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
