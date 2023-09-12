//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.490359, -3.770907, 0.000000, 38.996750, 8.291225, 1.000000};
//+
MeshSize {1} = 1.561869;
//+
MeshSize {2} = 1.561869;
//+
MeshSize {3} = 1.241984;
//+
MeshSize {4} = 1.241984;
//+
MeshSize {5} = 1.561869;
//+
MeshSize {6} = 1.561869;
//+
MeshSize {7} = 3.970413;
//+
MeshSize {8} = 3.970413;
//+
Cylinder(2) = {16.733899, 1.515126, 0.000000, 0.000000, 0.000000, 1.000000, 1.463315, 2*Pi};
//+
MeshSize {9} = 0.146332;
//+
MeshSize {10} = 0.146332;
//+
Cylinder(3) = {28.259788, 2.664513, 0.000000, 0.000000, 0.000000, 1.000000, 0.521074, 2*Pi};
//+
MeshSize {11} = 0.052107;
//+
MeshSize {12} = 0.052107;
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
Save "../geo_unrolled/cad_433.geo_unrolled";
