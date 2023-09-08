//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.832143, -3.887715, 0.000000, 36.333890, 8.772180, 0.000000};
//+
l = [0.8416217635056245, 3.7423947065090086, 3.7423947065090086, 0.8462012668489897];
//+
MeshSize {1} = 0.841622;
//+
MeshSize {2} = 3.742395;
//+
MeshSize {3} = 3.742395;
//+
MeshSize {4} = 0.846201;
//+
Disk(2) = {9.058511, 0.449706, 0.000000, 0.883586, 0.883586};
//+
c0 = 0.088358601324715;
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
