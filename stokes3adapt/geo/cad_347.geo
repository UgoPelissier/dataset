//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.053800, -4.068686, 0.000000, 31.736030, 8.990303, 1.000000};
//+
MeshSize {1} = 1.925798;
//+
MeshSize {2} = 1.925798;
//+
MeshSize {3} = 1.719762;
//+
MeshSize {4} = 1.719762;
//+
MeshSize {5} = 0.752631;
//+
MeshSize {6} = 0.752631;
//+
MeshSize {7} = 0.805137;
//+
MeshSize {8} = 0.805137;
//+
Cylinder(2) = {18.843620, 3.022310, 0.000000, 0.000000, 0.000000, 1.000000, 1.199365, 2*Pi};
//+
MeshSize {9} = 0.119937;
//+
MeshSize {10} = 0.119937;
//+
Cylinder(3) = {19.592560, -1.686215, 0.000000, 0.000000, 0.000000, 1.000000, 1.317442, 2*Pi};
//+
MeshSize {11} = 0.131744;
//+
MeshSize {12} = 0.131744;
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
Save "../geo_unrolled/cad_347.geo_unrolled";
