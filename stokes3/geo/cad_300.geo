//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.000720, -3.343892, 0.000000, 33.789716, 7.963836, 1.000000};
//+
MeshSize {1} = 0.838856;
//+
MeshSize {2} = 0.838856;
//+
MeshSize {3} = 0.740158;
//+
MeshSize {4} = 0.740158;
//+
MeshSize {5} = 1.474593;
//+
MeshSize {6} = 1.474593;
//+
MeshSize {7} = 1.550247;
//+
MeshSize {8} = 1.550247;
//+
Cylinder(2) = {8.068702, 1.760036, 0.000000, 0.000000, 0.000000, 1.000000, 1.158289, 2*Pi};
//+
MeshSize {9} = 0.115829;
//+
MeshSize {10} = 0.115829;
//+
Cylinder(3) = {18.211576, -0.896004, 0.000000, 0.000000, 0.000000, 1.000000, 1.024070, 2*Pi};
//+
MeshSize {11} = 0.102407;
//+
MeshSize {12} = 0.102407;
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
Save "../geo_unrolled/cad_300.geo_unrolled";
