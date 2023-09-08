//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.073491, -3.751312, 0.000000, 36.009484, 7.664206, 0.000000};
//+
l = [0.9896292807931779, 3.628589314796791, 3.628589314796791, 0.9217600440330331];
//+
MeshSize {1} = 0.989629;
//+
MeshSize {2} = 3.628589;
//+
MeshSize {3} = 3.628589;
//+
MeshSize {4} = 0.921760;
//+
Disk(2) = {9.923395, 1.019927, 0.000000, 1.048356, 1.048356};
//+
c0 = 0.10483564340483605;
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
