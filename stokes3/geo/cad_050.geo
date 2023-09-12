//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.992257, -2.983903, 0.000000, 33.622222, 7.793665, 1.000000};
//+
MeshSize {1} = 3.483314;
//+
MeshSize {2} = 3.483314;
//+
MeshSize {3} = 0.530931;
//+
MeshSize {4} = 0.530931;
//+
MeshSize {5} = 1.278545;
//+
MeshSize {6} = 1.278545;
//+
MeshSize {7} = 0.530931;
//+
MeshSize {8} = 0.530931;
//+
Cylinder(2) = {28.804202, -0.012661, 0.000000, 0.000000, 0.000000, 1.000000, 1.216603, 2*Pi};
//+
MeshSize {9} = 0.121660;
//+
MeshSize {10} = 0.121660;
//+
Cylinder(3) = {13.277630, 3.287899, 0.000000, 0.000000, 0.000000, 1.000000, 1.008241, 2*Pi};
//+
MeshSize {11} = 0.100824;
//+
MeshSize {12} = 0.100824;
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
Save "../geo_unrolled/cad_050.geo_unrolled";
