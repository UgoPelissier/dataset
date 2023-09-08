//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.489640, -4.032810, 0.000000, 34.896165, 8.362810, 0.000000};
//+
l = [3.5631999630315736, 1.5498533487324562, 1.5389096463476415, 3.5631999630315736];
//+
MeshSize {1} = 3.563200;
//+
MeshSize {2} = 1.549853;
//+
MeshSize {3} = 1.538910;
//+
MeshSize {4} = 3.563200;
//+
Disk(2) = {19.530043, 0.363197, 0.000000, 0.955345, 0.955345};
//+
c0 = 0.09553446168665011;
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
