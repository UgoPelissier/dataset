//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.139423, -3.701077, 0.000000, 32.941399, 8.504075, 1.000000};
//+
MeshSize {1} = 0.409960;
//+
MeshSize {2} = 0.409960;
//+
MeshSize {3} = 0.289090;
//+
MeshSize {4} = 0.289090;
//+
MeshSize {5} = 0.558951;
//+
MeshSize {6} = 0.558951;
//+
MeshSize {7} = 0.685079;
//+
MeshSize {8} = 0.685079;
//+
Cylinder(2) = {27.816900, -0.459452, 0.000000, 0.000000, 0.000000, 1.000000, 0.592481, 2*Pi};
//+
MeshSize {9} = 0.059248;
//+
MeshSize {10} = 0.059248;
//+
Cylinder(3) = {1.820558, 1.201733, 0.000000, 0.000000, 0.000000, 1.000000, 1.083431, 2*Pi};
//+
MeshSize {11} = 0.108343;
//+
MeshSize {12} = 0.108343;
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
Save "../geo_unrolled/cad_400.geo_unrolled";
