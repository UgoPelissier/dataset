//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.356974, -3.384064, 0.000000, 38.301009, 8.329812, 1.000000};
//+
l = [0.36171727548095317, 0.36171727548095317, 0.36171727548095317, 3.88816932850381, 3.88816932850381, 3.88816932850381, 3.88816932850381, 0.6119863932392638, 0.6119863932392638, 0.6119863932392638];
//+
MeshSize {1} = 0.361717;
//+
MeshSize {2} = 0.361717;
//+
MeshSize {3} = 0.361717;
//+
MeshSize {4} = 3.888169;
//+
MeshSize {5} = 3.888169;
//+
MeshSize {6} = 3.888169;
//+
MeshSize {7} = 3.888169;
//+
MeshSize {8} = 0.611986;
//+
Cylinder(2) = {4.811953, -1.099375, 0.000000, 0.000000, 0.000000, 1.000000, 1.389487, 2*Pi};
//+
c0 = 0.13894865170122814;
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
