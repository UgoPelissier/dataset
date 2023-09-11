//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.706956, -3.906244, 0.000000, 33.833357, 9.218462, 1.000000};
//+
l = [3.484649555084516, 3.484649555084516, 0.5941421329283962, 0.5941421329283962, 0.5941421329283962, 0.261349522206667, 0.261349522206667, 0.261349522206667, 3.484649555084516, 3.484649555084516];
//+
MeshSize {1} = 3.484650;
//+
MeshSize {2} = 3.484650;
//+
MeshSize {3} = 0.594142;
//+
MeshSize {4} = 0.594142;
//+
MeshSize {5} = 0.594142;
//+
MeshSize {6} = 0.261350;
//+
MeshSize {7} = 0.261350;
//+
MeshSize {8} = 0.261350;
//+
Cylinder(2) = {31.912177, 2.653332, 0.000000, 0.000000, 0.000000, 1.000000, 1.125058, 2*Pi};
//+
c0 = 0.11250580071642219;
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
