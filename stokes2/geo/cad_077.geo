//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.706956, -3.906244, 0.000000, 33.833357, 9.218462, 0.000000};
//+
l = [3.484649555084516, 0.5941421329283962, 0.261349522206667, 3.484649555084516];
//+
MeshSize {1} = 3.484650;
//+
MeshSize {2} = 0.594142;
//+
MeshSize {3} = 0.261350;
//+
MeshSize {4} = 3.484650;
//+
Disk(2) = {31.912177, 2.653332, 0.000000, 1.125058, 1.125058};
//+
c0 = 0.11250580071642219;
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
