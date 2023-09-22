//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.141428, -4.273279, 0.000000, 39.535537, 9.246200, 1.000000};
//+
MeshSize {1} = 0.644452;
//+
MeshSize {2} = 0.644452;
//+
MeshSize {3} = 0.704864;
//+
MeshSize {4} = 0.704864;
//+
MeshSize {5} = 2.358183;
//+
MeshSize {6} = 2.358183;
//+
MeshSize {7} = 2.298083;
//+
MeshSize {8} = 2.298083;
//+
Cylinder(2) = {15.551703, 0.878770, 0.000000, 0.000000, 0.000000, 1.000000, 1.438002, 2*Pi};
//+
MeshSize {9} = 0.143800;
//+
MeshSize {10} = 0.143800;
//+
Cylinder(3) = {12.283270, -1.140248, 0.000000, 0.000000, 0.000000, 1.000000, 1.291662, 2*Pi};
//+
MeshSize {11} = 0.129166;
//+
MeshSize {12} = 0.129166;
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
Save "../geo_unrolled/cad_084.geo_unrolled";
