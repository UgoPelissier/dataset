//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.746496, -3.995708, 0.000000, 32.946824, 9.879554, 1.000000};
//+
MeshSize {1} = 1.642842;
//+
MeshSize {2} = 1.642842;
//+
MeshSize {3} = 1.527048;
//+
MeshSize {4} = 1.527048;
//+
MeshSize {5} = 1.315426;
//+
MeshSize {6} = 1.315426;
//+
MeshSize {7} = 1.442063;
//+
MeshSize {8} = 1.442063;
//+
Cylinder(2) = {20.269909, -0.902795, 0.000000, 0.000000, 0.000000, 1.000000, 0.620866, 2*Pi};
//+
MeshSize {9} = 0.062087;
//+
MeshSize {10} = 0.062087;
//+
Cylinder(3) = {16.372445, 2.876963, 0.000000, 0.000000, 0.000000, 1.000000, 0.642140, 2*Pi};
//+
MeshSize {11} = 0.064214;
//+
MeshSize {12} = 0.064214;
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
Save "../geo_unrolled/cad_476.geo_unrolled";
