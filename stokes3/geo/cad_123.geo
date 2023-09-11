//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.831772, -4.580265, 0.000000, 30.133872, 9.346990, 1.000000};
//+
l = [3.131633254390613, 3.131633254390613, 0.6663158950393855, 0.6663158950393855, 0.6663158950393855, 0.6121150189172511, 0.6121150189172511, 0.6121150189172511, 3.131633254390613, 3.131633254390613];
//+
MeshSize {1} = 3.131633;
//+
MeshSize {2} = 3.131633;
//+
MeshSize {3} = 0.666316;
//+
MeshSize {4} = 0.666316;
//+
MeshSize {5} = 0.666316;
//+
MeshSize {6} = 0.612115;
//+
MeshSize {7} = 0.612115;
//+
MeshSize {8} = 0.612115;
//+
Cylinder(2) = {25.136959, 0.526897, 0.000000, 0.000000, 0.000000, 1.000000, 1.086465, 2*Pi};
//+
c0 = 0.10864650827394771;
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
