//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.877960, -3.197191, 0.000000, 35.519979, 7.954908, 1.000000};
//+
MeshSize {1} = 0.420887;
//+
MeshSize {2} = 0.420887;
//+
MeshSize {3} = 0.680410;
//+
MeshSize {4} = 0.680410;
//+
MeshSize {5} = 3.661462;
//+
MeshSize {6} = 3.661462;
//+
MeshSize {7} = 3.661462;
//+
MeshSize {8} = 3.661462;
//+
Cylinder(2) = {5.993178, -1.410717, 0.000000, 0.000000, 0.000000, 1.000000, 1.209332, 2*Pi};
//+
MeshSize {9} = 0.120933;
//+
MeshSize {10} = 0.120933;
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
//+
Save "../geo_unrolled/cad_180.geo_unrolled";
