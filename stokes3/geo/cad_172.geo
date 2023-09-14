//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.086688, -4.386502, 0.000000, 37.437768, 8.973935, 1.000000};
//+
MeshSize {1} = 0.510062;
//+
MeshSize {2} = 0.510062;
//+
MeshSize {3} = 0.778493;
//+
MeshSize {4} = 0.778493;
//+
MeshSize {5} = 1.646424;
//+
MeshSize {6} = 1.646424;
//+
MeshSize {7} = 1.605238;
//+
MeshSize {8} = 1.605238;
//+
Cylinder(2) = {5.247052, -2.001478, 0.000000, 0.000000, 0.000000, 1.000000, 0.584249, 2*Pi};
//+
MeshSize {9} = 0.058425;
//+
MeshSize {10} = 0.058425;
//+
Cylinder(3) = {20.765908, 0.897464, 0.000000, 0.000000, 0.000000, 1.000000, 1.107593, 2*Pi};
//+
MeshSize {11} = 0.110759;
//+
MeshSize {12} = 0.110759;
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
Save "../geo_unrolled/cad_172.geo_unrolled";
