//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.495329, -4.450706, 0.000000, 34.527583, 8.975451, 0.000000};
//+
l = [1.7157518412773518, 1.5870317015808735, 1.6091326623024629, 1.7363227694422307];
//+
MeshSize {1} = 1.715752;
//+
MeshSize {2} = 1.587032;
//+
MeshSize {3} = 1.609133;
//+
MeshSize {4} = 1.736323;
//+
Disk(2) = {18.420338, -0.386590, 0.000000, 1.222444, 1.222444};
//+
c0 = 0.12224438275706427;
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
