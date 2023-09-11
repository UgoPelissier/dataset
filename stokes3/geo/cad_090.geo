//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.489640, -4.032810, 0.000000, 34.896165, 8.362810, 1.000000};
//+
l = [3.5631999630315736, 3.5631999630315736, 1.5498533487324562, 1.5498533487324562, 1.5498533487324562, 1.5389096463476415, 1.5389096463476415, 1.5389096463476415, 3.5631999630315736, 3.5631999630315736];
//+
MeshSize {1} = 3.563200;
//+
MeshSize {2} = 3.563200;
//+
MeshSize {3} = 1.549853;
//+
MeshSize {4} = 1.549853;
//+
MeshSize {5} = 1.549853;
//+
MeshSize {6} = 1.538910;
//+
MeshSize {7} = 1.538910;
//+
MeshSize {8} = 1.538910;
//+
Cylinder(2) = {19.530043, 0.363197, 0.000000, 0.000000, 0.000000, 1.000000, 0.955345, 2*Pi};
//+
c0 = 0.09553446168665011;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
