//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.706956, -3.906244, 0.000000, 33.833357, 9.218462, 1.000000};
//+
MeshSize {1} = 3.484650;
//+
MeshSize {2} = 3.484650;
//+
MeshSize {3} = 1.712020;
//+
MeshSize {4} = 1.712020;
//+
MeshSize {5} = 0.594142;
//+
MeshSize {6} = 0.594142;
//+
MeshSize {7} = 0.261350;
//+
MeshSize {8} = 0.261350;
//+
Cylinder(2) = {31.912177, 2.653332, 0.000000, 0.000000, 0.000000, 1.000000, 1.125058, 2*Pi};
//+
MeshSize {9} = 0.112506;
//+
MeshSize {10} = 0.112506;
//+
Cylinder(3) = {18.809355, 1.360965, 0.000000, 0.000000, 0.000000, 1.000000, 1.408411, 2*Pi};
//+
MeshSize {11} = 0.140841;
//+
MeshSize {12} = 0.140841;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_044.geo_unrolled";
