//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.729732, -3.686940, 0.000000, 39.001426, 8.446336, 0.000000};
//+
l = [3.9954975098399568, 1.781867644954954, 1.678890547946471, 3.9954975098399568];
//+
MeshSize {1} = 3.995498;
//+
MeshSize {2} = 1.781868;
//+
MeshSize {3} = 1.678891;
//+
MeshSize {4} = 3.995498;
//+
Disk(2) = {21.933213, 2.782262, 0.000000, 1.118520, 1.118520};
//+
c0 = 0.11185197523642461;
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
