//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.807128, -4.236663, 0.000000, 34.555153, 9.932789, 1.000000};
//+
MeshSize {1} = 0.941404;
//+
MeshSize {2} = 0.941404;
//+
MeshSize {3} = 0.953546;
//+
MeshSize {4} = 0.953546;
//+
MeshSize {5} = 1.435463;
//+
MeshSize {6} = 1.435463;
//+
MeshSize {7} = 0.976994;
//+
MeshSize {8} = 0.976994;
//+
Cylinder(2) = {13.385839, 0.516909, 0.000000, 0.000000, 0.000000, 1.000000, 1.329405, 2*Pi};
//+
MeshSize {9} = 0.132940;
//+
MeshSize {10} = 0.132940;
//+
Cylinder(3) = {21.872269, 3.592758, 0.000000, 0.000000, 0.000000, 1.000000, 1.077352, 2*Pi};
//+
MeshSize {11} = 0.107735;
//+
MeshSize {12} = 0.107735;
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
Save "../geo_unrolled/cad_003.geo_unrolled";
