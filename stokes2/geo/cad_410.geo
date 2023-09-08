//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.657921, -3.544102, 0.000000, 36.355219, 8.139846, 0.000000};
//+
l = [1.3062872735323205, 1.3062872735323205, 3.723622998079437, 3.723622998079437, 3.723622998079437, 3.723622998079437, 1.2860391793945005, 1.2860391793945005];
//+
MeshSize {1} = 1.306287;
//+
MeshSize {2} = 1.306287;
//+
MeshSize {3} = 3.723623;
//+
MeshSize {4} = 3.723623;
//+
Disk(2) = {13.559913, 0.862446, 0.000000, 0.570874, 0.570874};
//+
c0 = 0.057087396095012205;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.395734, -1.065761, 0.000000, 1.208434, 1.208434};
//+
c1 = 0.1208433784978837;
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
