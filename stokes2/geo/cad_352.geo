//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.911486, -3.989256, 0.000000, 35.564837, 9.387769, 0.000000};
//+
l = [1.838670037200206, 1.838670037200206, 1.5989401683204758, 0.17573496885539963, 1.5844189710746297, 0.6768126082622585, 1.8259316253809719, 1.8259316253809719];
//+
MeshSize {1} = 1.838670;
//+
MeshSize {2} = 1.838670;
//+
MeshSize {3} = 1.598940;
//+
MeshSize {4} = 0.175735;
//+
Disk(2) = {19.938511, 0.970573, 0.000000, 1.276147, 1.276147};
//+
c0 = 0.1276146745122332;
//+
MeshSize {5} = c0;
//+
Disk(3) = {35.173748, -1.932212, 0.000000, 0.677426, 0.677426};
//+
c1 = 0.06774258984882632;
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
