//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.063792, -2.904265, 0.000000, 35.420545, 7.565912, 1.000000};
//+
MeshSize {1} = 3.360289;
//+
MeshSize {2} = 3.360289;
//+
MeshSize {3} = 2.963866;
//+
MeshSize {4} = 2.963866;
//+
MeshSize {5} = 0.374745;
//+
MeshSize {6} = 0.374745;
//+
MeshSize {7} = 0.691002;
//+
MeshSize {8} = 0.691002;
//+
Cylinder(2) = {14.087726, 2.004939, 0.000000, 0.000000, 0.000000, 1.000000, 0.583251, 2*Pi};
//+
MeshSize {9} = 0.058325;
//+
MeshSize {10} = 0.058325;
//+
Cylinder(3) = {31.420363, -1.442285, 0.000000, 0.000000, 0.000000, 1.000000, 0.747397, 2*Pi};
//+
MeshSize {11} = 0.074740;
//+
MeshSize {12} = 0.074740;
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
Save "../geo_unrolled/cad_287.geo_unrolled";
