//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.496355, -3.955561, 0.000000, 38.834889, 8.326509, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {32.850720, 1.407363, 0.000000, 0.649144, 0.649144};
//+
c0 = 0.06491444926667661;
//+
MeshSize {5} = c0;
//+
Disk(3) = {3.543064, 0.097465, 0.000000, 1.223564, 1.223564};
//+
c1 = 0.1223563616898479;
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
