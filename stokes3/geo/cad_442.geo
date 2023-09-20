//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.010320, -4.483075, 0.000000, 33.222140, 9.232559, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {22.825796, 1.969637, 0.000000, 0.000000, 0.000000, 1.000000, 1.208453, 2*Pi};
//+
MeshSize {9} = 0.120845;
//+
MeshSize {10} = 0.120845;
//+
Cylinder(3) = {24.462550, -2.250662, 0.000000, 0.000000, 0.000000, 1.000000, 0.595279, 2*Pi};
//+
MeshSize {11} = 0.059528;
//+
MeshSize {12} = 0.059528;
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
Save "../geo_unrolled/cad_442.geo_unrolled";
