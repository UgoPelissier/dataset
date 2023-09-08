//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.831772, -4.580265, 0.000000, 30.133872, 9.346990, 0.000000};
//+
l = [3.131633254390613, 0.6663158950393855, 0.6121150189172511, 3.131633254390613];
//+
MeshSize {1} = 3.131633;
//+
MeshSize {2} = 0.666316;
//+
MeshSize {3} = 0.612115;
//+
MeshSize {4} = 3.131633;
//+
Disk(2) = {25.136959, 0.526897, 0.000000, 1.086465, 1.086465};
//+
c0 = 0.10864650827394771;
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
