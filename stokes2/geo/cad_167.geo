//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.356974, -3.384064, 0.000000, 38.301009, 8.329812, 0.000000};
//+
l = [0.36171727548095317, 3.88816932850381, 3.88816932850381, 0.6119863932392638];
//+
MeshSize {1} = 0.361717;
//+
MeshSize {2} = 3.888169;
//+
MeshSize {3} = 3.888169;
//+
MeshSize {4} = 0.611986;
//+
Disk(2) = {4.811953, -1.099375, 0.000000, 1.389487, 1.389487};
//+
c0 = 0.13894865170122814;
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
