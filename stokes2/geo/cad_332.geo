//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.114013, -3.893423, 0.000000, 31.872454, 7.999373, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {8.412246, 0.185154, 0.000000, 0.701673, 0.701673};
//+
c0 = 0.07016731899821894;
//+
MeshSize {5} = c0;
//+
Disk(3) = {22.500456, -1.637062, 0.000000, 0.539406, 0.539406};
//+
c1 = 0.05394057076285687;
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
